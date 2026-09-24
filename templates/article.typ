// Style commun des articles Typst de « Mythes et réalités en biomécanique ».
// Reprend la charte de templates/pandoc-header.tex (couleurs, titres, en-tête).
//
// Utilisation dans un article :
//   #import "../templates/article.typ": article
//   #show: article.with(meta)

#let ink = rgb("#27343B")
#let blue = rgb("#1F5F74")
#let coral = rgb("#E07A5F")

#let book-title = "Mythes et réalités en biomécanique"
#let sans = ("Source Sans 3", "Arial", "Liberation Sans", "DejaVu Sans")

#let article(meta, body) = {
  set document(
    title: meta.title,
    author: meta.authors.map(a => a.name),
    keywords: meta.at("keywords", default: ()),
  )
  set text(lang: "fr", size: 11pt, fill: ink)
  set par(justify: true)
  set page(
    paper: "a4",
    margin: 2.4cm,
    header: context {
      set text(font: sans, size: 9pt)
      book-title
      h(1fr)
      counter(page).display()
      v(-0.6em)
      line(length: 100%, stroke: 0.4pt + coral)
    },
  )

  show heading: set text(font: sans, weight: "bold")
  show heading.where(level: 1): set text(size: 16pt, fill: blue)
  show heading.where(level: 1): set block(above: 1.4em, below: 0.8em)
  show heading.where(level: 2): set text(size: 13pt, fill: ink)
  show heading.where(level: 3): set text(size: 11pt, fill: ink)

  show figure.caption: set text(size: 9.5pt)
  show link: set text(fill: blue)

  // Bloc de titre
  block(width: 100%, below: 1.2em, {
    set text(font: sans)
    set par(justify: false)
    text(size: 22pt, weight: "bold", fill: blue, meta.title.replace("'", "’"))
    v(0.3em)
    for a in meta.authors.filter(a => a.name != "") {
      text(style: "italic", a.name)
      if a.at("affiliation", default: "") != "" [, #a.affiliation]
      linebreak()
    }
    v(0.2em)
    line(length: 100%, stroke: 1pt + coral)
  })

  body
}
