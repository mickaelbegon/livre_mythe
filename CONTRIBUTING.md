# Regles de contribution

Ce projet fonctionne par Pull Request afin de garder une trace claire des choix editoriaux, des relectures scientifiques et des modifications apportees au livre.

## 1. Choisir un theme

1. Consulter [IDEES.md](IDEES.md) pour choisir un mythe, une realite ou une nuance.
2. Verifier que le sujet n'est pas deja traite dans `articles/` ou reserve dans une Pull Request ouverte.
3. Si l'idee n'existe pas encore, l'ajouter dans `IDEES.md` avec un statut initial et un chapitre propose.
4. Creer une branche au format `article/slug-du-sujet`.

Une idee est reservee lorsqu'une Pull Request ouverte mentionne explicitement le sujet dans son titre ou sa description.

## 2. Ouvrir une Pull Request tot

La Pull Request peut etre ouverte en brouillon des que le sujet est choisi. Elle sert a:

- signaler que le theme est reserve;
- discuter la formulation du mythe ou de la realite;
- verifier le chapitre et le public vise;
- suivre l'avancement de la redaction;
- documenter les relectures et les sources.

Le fichier d'article doit utiliser [templates/article-template.md](templates/article-template.md). Les metadonnees YAML sont obligatoires, car elles alimentent le collectif des auteurs et la compilation du livre.

## 3. Delai de finalisation

A partir de l'ouverture de la Pull Request, l'auteur dispose de **3 mois** pour finaliser la contribution.

Une contribution est consideree comme finalisee lorsque:

- le texte suit le format editorial;
- les references sont completes et verifiees;
- la figure est presente et sa licence est compatible;
- l'usage eventuel de l'IA est declare;
- `make markdown` fonctionne;
- la Pull Request est prete pour relecture finale.

Si la contribution n'est pas finalisee apres 3 mois, le theme peut etre libere et repris par une autre personne. L'auteur peut demander une extension dans la Pull Request avant l'echeance, en indiquant ce qui reste a faire.

## 4. Qualite scientifique attendue

Chaque article doit:

- distinguer clairement ce qui est observe, mesure, estime et interprete;
- expliciter les limites des modeles et des methodes;
- eviter les formulations trop absolues lorsque la litterature est nuancee;
- citer 3 a 5 references fiables;
- etre lisible par des etudiants de licence sans sacrifier la rigueur;
- inclure une figure originale ou libre de droits.

Les references doivent etre relues par l'auteur. Les DOI, URL, titres, auteurs et annees ne doivent pas etre inventes ni recopies sans verification.

## 5. Usage responsable de l'IA

L'IA peut aider a brainstormer, reformuler, structurer, traduire, generer un brouillon ou proposer des pistes bibliographiques. Elle ne remplace pas la responsabilite scientifique de l'auteur.

L'auteur doit:

- declarer les outils d'IA utilises dans la Pull Request;
- verifier toutes les affirmations scientifiques;
- verifier manuellement toutes les references;
- ne pas citer une reference proposee par IA sans l'avoir consultee ou validee;
- ne pas copier de texte protege sans droit de reutilisation;
- signaler toute figure ou image generee par IA et verifier que son usage est compatible avec la licence du projet;
- relire le texte final pour enlever les approximations, hallucinations et formulations trompeuses.

L'auteur reste responsable du contenu signe, meme si une partie du travail a ete assistee par IA.

## 6. Relecture

Une Pull Request peut etre relue sur:

- la clarte pedagogique;
- la justesse biomecanique;
- la qualite des references;
- la coherence avec le format du livre;
- la licence de la figure;
- l'usage responsable de l'IA.

Les demandes de modification doivent etre traitees dans la Pull Request afin de garder l'historique de la discussion.

