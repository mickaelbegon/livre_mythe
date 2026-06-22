#!/usr/bin/env python3
"""Assemble les articles Markdown et genere les metadonnees auteurs."""

from __future__ import annotations

import datetime as dt
import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
ARTICLES = ROOT / "articles"
BUILD = ROOT / "build"
AUTHORS = ROOT / "AUTHORS.md"
BOOK = BUILD / "book.md"


def scalar(value: str):
    value = value.strip()
    if value == "":
        return ""
    if (value.startswith('"') and value.endswith('"')) or (
        value.startswith("'") and value.endswith("'")
    ):
        return value[1:-1]
    if value.lower() == "true":
        return True
    if value.lower() == "false":
        return False
    return value


def split_key_value(text: str) -> tuple[str, str]:
    if ":" not in text:
        raise ValueError(f"Ligne YAML non reconnue: {text}")
    key, value = text.split(":", 1)
    return key.strip(), value.strip()


def yaml_subset_load(text: str):
    lines = []
    for raw in text.splitlines():
        if not raw.strip() or raw.lstrip().startswith("#"):
            continue
        indent = len(raw) - len(raw.lstrip(" "))
        lines.append((indent, raw.strip()))

    def parse_block(index: int, indent: int):
        if index >= len(lines):
            return {}, index
        if lines[index][1].startswith("- "):
            return parse_list(index, indent)
        return parse_mapping(index, indent)

    def parse_list(index: int, indent: int):
        result = []
        while index < len(lines):
            line_indent, content = lines[index]
            if line_indent < indent:
                break
            if line_indent != indent or not content.startswith("- "):
                break
            item = content[2:].strip()
            index += 1
            if item and ":" in item:
                key, value = split_key_value(item)
                entry = {key: scalar(value)}
                if index < len(lines) and lines[index][0] > indent:
                    nested, index = parse_mapping(index, lines[index][0])
                    entry.update(nested)
                result.append(entry)
            elif item:
                result.append(scalar(item))
            elif index < len(lines) and lines[index][0] > indent:
                nested, index = parse_block(index, lines[index][0])
                result.append(nested)
            else:
                result.append("")
        return result, index

    def parse_mapping(index: int, indent: int):
        result = {}
        while index < len(lines):
            line_indent, content = lines[index]
            if line_indent < indent:
                break
            if line_indent != indent or content.startswith("- "):
                break
            key, value = split_key_value(content)
            index += 1
            if value:
                result[key] = scalar(value)
            elif index < len(lines) and lines[index][0] > indent:
                result[key], index = parse_block(index, lines[index][0])
            else:
                result[key] = {}
        return result, index

    parsed, _ = parse_block(0, lines[0][0] if lines else 0)
    return parsed


def read_front_matter(path: Path) -> tuple[dict, str]:
    text = path.read_text(encoding="utf-8")
    match = re.match(r"^---\n(.*?)\n---\n(.*)$", text, re.S)
    if not match:
        raise ValueError(f"{path} ne contient pas de bloc YAML initial.")
    metadata = yaml_subset_load(match.group(1)) or {}
    body = match.group(2).strip()
    return metadata, body


def article_files() -> list[Path]:
    return sorted(
        path
        for path in ARTICLES.glob("*.md")
        if path.is_file() and not path.name.startswith("_")
    )


def author_key(author: dict) -> tuple[str, str]:
    return (
        str(author.get("name", "")).strip(),
        str(author.get("affiliation", "")).strip(),
    )


def collect_authors(items: list[tuple[Path, dict, str]]) -> dict[tuple[str, str], dict]:
    authors: dict[tuple[str, str], dict] = {}
    for path, metadata, _body in items:
        for author in metadata.get("authors", []) or []:
            key = author_key(author)
            if not key[0]:
                continue
            entry = authors.setdefault(
                key,
                {
                    "name": key[0],
                    "affiliation": key[1],
                    "email": author.get("email", ""),
                    "orcid": author.get("orcid", ""),
                    "roles": set(),
                    "articles": [],
                },
            )
            entry["roles"].update(author.get("roles", []) or [])
            entry["articles"].append(metadata.get("title", path.stem))
            if author.get("email") and not entry["email"]:
                entry["email"] = author["email"]
            if author.get("orcid") and not entry["orcid"]:
                entry["orcid"] = author["orcid"]
    return authors


def render_authors(authors: dict[tuple[str, str], dict]) -> str:
    lines = [
        "# Collectif des auteurs",
        "",
        "_Cette page est generee depuis les metadonnees YAML des articles._",
        "",
    ]
    for _key, author in sorted(authors.items(), key=lambda item: item[0][0].lower()):
        line = f"## {author['name']}"
        lines.extend([line, ""])
        if author["affiliation"]:
            lines.append(f"Affiliation: {author['affiliation']}")
            lines.append("")
        if author["orcid"]:
            lines.append(f"ORCID: {author['orcid']}")
            lines.append("")
        if author["roles"]:
            roles = ", ".join(sorted(author["roles"]))
            lines.append(f"Roles: {roles}")
            lines.append("")
        articles = "; ".join(author["articles"])
        lines.append(f"Articles: {articles}")
        lines.append("")
    return "\n".join(lines).rstrip() + "\n"


def strip_first_h1(body: str) -> str:
    return re.sub(r"^# .+?\n+", "", body, count=1)


def render_book(items: list[tuple[Path, dict, str]], authors_md: str) -> str:
    meta = yaml_subset_load((ROOT / "metadata.yml").read_text(encoding="utf-8"))
    today = dt.date.today().isoformat()
    header = [
        "---",
        f"title: \"{meta['title']}\"",
        f"subtitle: \"{meta.get('subtitle', '')}\"",
        f"lang: \"{meta.get('language', 'fr')}\"",
        f"date: \"{meta.get('date', today)}\"",
        "toc: true",
        "numbersections: true",
        "geometry: margin=2.4cm",
        "fontsize: 11pt",
        "mainfont: DejaVu Serif",
        "sansfont: DejaVu Sans",
        "colorlinks: true",
        "linkcolor: 1f5f74",
        "urlcolor: 7a4f8f",
        "---",
        "",
        f"# {meta['title']}",
        "",
        f"*{meta.get('subtitle', '')}*",
        "",
        f"Licence: {meta.get('license', 'CC BY 4.0')}",
        "",
        "\\newpage",
        "",
        authors_md,
        "\\newpage",
        "",
    ]

    chapters = {chapter["slug"]: chapter["title"] for chapter in meta.get("chapters", [])}
    grouped: dict[str, list[tuple[Path, dict, str]]] = {slug: [] for slug in chapters}
    extras: list[tuple[Path, dict, str]] = []
    for item in items:
        chapter = item[1].get("chapter", "")
        grouped.setdefault(chapter, [])
        if chapter in chapters:
            grouped[chapter].append(item)
        else:
            extras.append(item)

    sections: list[str] = []
    for slug, title in chapters.items():
        if not grouped.get(slug):
            continue
        sections.append(f"# {title}\n")
        for _path, metadata, body in grouped[slug]:
            sections.append(f"## {metadata.get('title', 'Sans titre')}\n")
            sections.append(strip_first_h1(body))
            sections.append("\n\\newpage\n")
    if extras:
        sections.append("# Contributions a classer\n")
        for _path, metadata, body in extras:
            sections.append(f"## {metadata.get('title', 'Sans titre')}\n")
            sections.append(strip_first_h1(body))
            sections.append("\n\\newpage\n")
    return "\n".join(header + sections)


def main() -> None:
    BUILD.mkdir(exist_ok=True)
    items = [(path, *read_front_matter(path)) for path in article_files()]
    authors_md = render_authors(collect_authors(items))
    AUTHORS.write_text(authors_md, encoding="utf-8")
    BOOK.write_text(render_book(items, authors_md), encoding="utf-8")
    print(f"Genere: {AUTHORS.relative_to(ROOT)}")
    print(f"Genere: {BOOK.relative_to(ROOT)}")


if __name__ == "__main__":
    main()
