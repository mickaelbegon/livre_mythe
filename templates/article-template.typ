// Gabarit d'article Typst. Copier ce fichier dans articles/ (ex. articles/002-mon-sujet.typ),
// puis remplir `meta` et les sections. Il suit la même structure que article-template.md.
// Compilation depuis la racine du dépôt :
//   typst compile --root . articles/002-mon-sujet.typ

#import "../templates/article.typ": article

#let meta = (
  id: "000",
  title: "Titre court du mythe ou de la réalité",
  status: "mythe", // mythe / realite / nuance
  chapter: "bases",
  summary: "Une phrase qui dit ce que l'article clarifie.",
  take_home: "La phrase que l'étudiant devrait retenir.",
  confidence: "eleve", // faible / modere / eleve
  keywords: ("biomécanique",),
  authors: (
    (
      name: "Prénom Nom",
      affiliation: "Université / laboratoire / organisation",
      email: "prenom.nom@example.org",
      orcid: "0000-0000-0000-0000",
      roles: ("redaction", "relecture"),
    ),
  ),
  figure: (
    path: "figures/000-figure.svg",
    caption: "Légende courte, informative et autonome.",
    credit: "Auteur de la contribution",
    license: "CC BY 4.0",
  ),
  references: (
    "Auteur A, Auteur B. (2026). Titre. Journal. DOI/URL.",
  ),
)

#show: article.with(meta)

= En bref

*Statut~:* mythe / réalité / nuance.

*Message central~:* une phrase claire.

*Niveau de confiance~:* faible / modéré / élevé.

= Pourquoi on pourrait y croire

Décrire l'intuition, l'observation commune, le raccourci pédagogique ou l'expérience de terrain qui rend l'idée plausible.

= Explication grand public

Expliquer le phénomène avec des mots simples, en évitant le jargon inutile. Donner une analogie seulement si elle aide vraiment.

= Explication scientifique

Préciser les concepts, les variables mécaniques, les hypothèses de modèle, les limites de validité et les points de consensus ou de débat. Une équation courte est acceptable si elle est expliquée, par exemple~:

$ sum arrow(F)_"ext" = m thin arrow(a)_G $

= Ce qu'il faut retenir en pratique

Indiquer ce que cela change pour l'apprentissage, l'analyse du mouvement, l'entraînement, la conception, la prévention ou la réadaptation.

= Figure

// Décommenter une fois la figure ajoutée dans articles/figures/.
// #figure(
//   image(meta.figure.path, width: 100%),
//   caption: meta.figure.caption,
// ) <fig-principale>

Source et licence~: auteur de la contribution, CC BY 4.0.

= Références

+ Auteur A, Auteur B. (2026). Titre. _Journal_. DOI/URL.
+ Auteur C. (2024). Titre. _Éditeur ou revue_. DOI/URL.
+ Auteur D, Auteur E. (2022). Titre. _Journal_. DOI/URL.
