# Mythes et realites en biomecanique

Projet collaboratif de livre court pour etudiants de licence STAPS, genie et kinesiology. Chaque contribution traite un mythe ou une realite de biomecanique en 2 a 3 pages, avec une explication progressive: intuition de depart, vulgarisation, mise au point scientifique, references et figure libre de droits.

## Format editorial

Chaque article suit le meme format:

1. **En bref**: le statut de l'idee, ce qu'il faut retenir, et le niveau de confiance.
2. **Pourquoi on pourrait y croire**: l'intuition, l'observation courante ou le raccourci pedagogique qui rend l'idee plausible.
3. **Explication grand public**: une version lisible sans equation, centree sur les mecanismes.
4. **Explication scientifique**: definitions, hypotheses, limites, modeles, ordres de grandeur ou equations simples si utiles.
5. **Ce qu'il faut retenir en pratique**: consequences pour apprendre, mesurer, entrainer, concevoir ou soigner.
6. **Figure libre de droits**: une figure originale, CC0, CC BY, domaine public, ou issue d'une source compatible.
7. **References**: 3 a 5 references fiables, avec DOI/URL quand possible.

Le gabarit officiel est dans [templates/article-template.md](/Users/mickaelbegon/Documents/GIT/livre_mythe/templates/article-template.md).

## Structure du depot

```text
articles/              Fiches Markdown validees ou en cours
articles/figures/      Figures libres de droits citees par les fiches
templates/             Gabarits de contribution
scripts/               Outils de compilation et de metadonnees
metadata.yml           Metadonnees globales du livre
AUTHORS.md             Liste generee depuis les metadonnees des articles
build/book.md          Livre assemble en Markdown
dist/*.pdf             PDF genere localement ou par CI
```

## Creer une contribution

1. Copier `templates/article-template.md` dans `articles/`.
2. Nommer le fichier avec un numero et un slug, par exemple `articles/001-course-attaque-talon.md`.
3. Completer le bloc de metadonnees YAML en haut du fichier.
4. Ajouter une figure libre de droits dans `articles/figures/` et documenter sa licence.
5. Ouvrir une Pull Request.

Les champs `authors` de chaque article alimentent automatiquement `AUTHORS.md` et la page "Collectif des auteurs" du livre compile.

## Compiler

Generer le Markdown assemble et la liste des auteurs:

```bash
make markdown
```

Generer le PDF si `pandoc` et un moteur LaTeX sont disponibles:

```bash
make pdf
```

Tout reconstruire:

```bash
make all
```

## Flux Git recommande

```bash
git checkout -b article/mon-sujet
cp templates/article-template.md articles/002-mon-sujet.md
make markdown
git add articles/ AUTHORS.md
git commit -m "Add article on mon sujet"
git push -u origin article/mon-sujet
```

La Pull Request doit decrire le mythe ou la realite traitee, signaler la licence de la figure et mentionner les points qui demandent une relecture scientifique.

## Themes de depart

Les chapitres proposes sont definis dans `metadata.yml`:

- Bases et methodes
- Mouvement, technique et performance
- Charges, contraintes et adaptation
- Mesure, modelisation et interpretation
- Sante, prevention et rehabilitation

La liste peut evoluer par Pull Request. Chaque article choisit son chapitre via le champ `chapter`.

## Licence

Sauf mention contraire, le texte du projet est publie sous licence CC BY 4.0. Les figures peuvent avoir leur propre licence compatible, indiquee dans les metadonnees de l'article.
