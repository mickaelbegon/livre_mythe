---
id: "001"
title: "La force n'est pas un mouvement"
status: "realite"
chapter: "cinetique-dynamique"
summary: "Une force ne crée pas le mouvement : elle en modifie la vitesse."
take_home: "Observer un mouvement ne suffit pas à connaître les forces qui l'ont produit."
confidence: "eleve"
keywords:
  - force
  - cinématique
  - dynamique
  - accélération
  - dynamique inverse
  - redondance musculaire
authors:
  - name: "Mickaël Begon"
    affiliation: "Université de Montréal"
    email: ""
    orcid: ""
    roles:
      - coordination
      - redaction
figure:
  path: "articles/figures/001-force-mouvement.svg"
  caption: "La cinématique décrit le mouvement ; la dynamique relie ce mouvement aux forces et aux moments."
  credit: "Figure générée avec l'assistance de l'IA pour l'article exemple"
  license: "CC BY 4.0"
ai_use:
  declaration: "Texte et figure générés avec l'assistance de l'IA pour servir d'exemple de contribution ; le contenu doit être relu et validé scientifiquement avant d'être utilisé comme article final."
references:
  - "Winter DA. (2009). Biomechanics and Motor Control of Human Movement (4e éd.). Wiley."
  - "Nigg BM, Herzog W. (2007). Biomechanics of the Musculo-skeletal System (3e éd.). Wiley."
  - "Robertson DGE, Caldwell GE, Hamill J, Kamen G, Whittlesey SN. (2013). Research Methods in Biomechanics (2e éd.). Human Kinetics."
  - "Halloun IA, Hestenes D. (1985). Common sense concepts about motion. American Journal of Physics, 53(11), 1056-1065. https://doi.org/10.1119/1.14031"
  - "Linthorne NP. (2001). Analysis of standing vertical jumps using a force platform. American Journal of Physics, 69(11), 1198-1204. https://doi.org/10.1119/1.1397460"
  - "Erdemir A, McLean S, Herzog W, van den Bogert AJ. (2007). Model-based estimation of muscle forces exerted during movements. Clinical Biomechanics, 22(2), 131-154. https://doi.org/10.1016/j.clinbiomech.2006.09.005"
---

# La force n'est pas un mouvement

## En bref

**Statut :** réalité.

**Message central :** une force ne crée pas le mouvement, elle en modifie la vitesse. La cinématique décrit les positions, les vitesses et les accélérations ; la dynamique cherche les forces et les moments qui peuvent expliquer ces accélérations.

**Niveau de confiance :** élevé.

## Pourquoi on pourrait y croire

L'idée inverse est tenace : on pense souvent qu'on peut « lire » la force dans un mouvement, et qu'un corps qui bouge est forcément poussé par une force. Dans le langage courant, on dit volontiers qu'une personne « met de la force » quand on voit un geste rapide, ample ou spectaculaire. Cette association est intuitive : un sprint, un saut ou un lancer donnent l'impression que le mouvement visible est une mesure directe de l'effort produit.

L'expérience quotidienne renforce cette intuition : un chariot qu'on cesse de pousser finit par s'arrêter, ce qui suggère qu'il faut une force pour entretenir un mouvement. Cette conception, proche de la physique d'Aristote, est l'une des plus répandues, y compris chez les étudiants qui ont suivi des cours de physique (Halloun et Hestenes, 1985). Enfin, en cours de physique, les flèches de force sont souvent dessinées à côté de trajectoires, ce qui peut faire croire que la force est simplement une autre façon de nommer le mouvement.

## Explication grand public

Le mouvement est ce que l'on voit : un segment du corps (la cuisse, l'avant-bras) qui tourne, le centre de masse (le point qui résume la position moyenne de la masse du corps) qui monte, un pied qui touche le sol. La force, elle, est une interaction entre deux corps : le pied pousse le sol, un muscle tire sur un tendon, l'air freine un coureur.

Une force ne crée pas le mouvement : elle change la vitesse, en accélérant, en freinant ou en déviant. Un ballon lancé ne « contient » plus la force du lancer : une fois lâché, seuls son poids et la résistance de l'air agissent sur lui, et il continue pourtant d'avancer. De même, quand on saute, on pousse sur le sol, mais c'est la réaction du sol, qui pousse en retour vers le haut, qui accélère le corps. Pour faire tourner un segment, ce qui compte n'est pas seulement la force, mais son moment, c'est-à-dire son effet de rotation, qui dépend de la force et de sa distance à l'articulation.

Deux personnes peuvent réaliser des mouvements qui se ressemblent tout en utilisant des stratégies mécaniques différentes. Inversement, de grandes forces peuvent être présentes sans mouvement apparent : lors d'une contraction isométrique, par exemple quand on pousse contre un mur, les muscles produisent des forces importantes, mais le corps reste immobile, car les forces externes qui s'exercent sur lui (mur, sol, poids) s'équilibrent. Leur somme, la force nette, est nulle. C'est pour cela que la vidéo seule fournit une information précieuse, mais incomplète.

## Explication scientifique

La cinématique mesure des grandeurs comme la position, l'angle articulaire, la vitesse et l'accélération. La dynamique relie ces grandeurs aux causes mécaniques du mouvement. Pour un corps de masse $m$, les équations de Newton-Euler s'écrivent :

$$\sum \vec{F}_{\text{ext}} = m\,\vec{a}_G \qquad \text{et} \qquad \sum \vec{M}_G = \frac{\mathrm{d}\vec{H}_G}{\mathrm{d}t}$$

La première indique que la somme des forces externes est égale au produit de la masse par l'accélération du centre de masse $G$ ; la seconde, que la somme des moments externes par rapport à $G$ est égale à la dérivée du moment cinétique $\vec{H}_G$, qui dépend des vitesses angulaires et des inerties segmentaires. Ces équations relient les forces aux accélérations, et non aux vitesses : un corps peut se déplacer à vitesse constante sous une force nette nulle, et un corps immobile peut subir de grandes forces qui s'annulent.

Le saut vertical illustre bien ce point. La hauteur atteinte dépend de la vitesse verticale au décollage $v$, elle-même fixée par l'impulsion nette : $\int (F_z - m g)\,\mathrm{d}t = m\,v$, où $F_z$ est la composante verticale de la force de réaction du sol. Une poussée brève et intense et une poussée plus longue et plus modérée peuvent produire la même impulsion, donc le même saut, avec des profils force-temps très différents (Linthorne, 2001).

La cinématique n'est pas pour autant muette sur les forces. Si l'on connaît les paramètres inertiels des segments, l'accélération du centre de masse permet d'estimer la force externe nette. Elle ne dit toutefois pas comment cette force se répartit, par exemple entre les deux pieds en double appui, ni quelles sont les forces internes. De plus, obtenir une accélération demande de dériver deux fois des positions, ce qui amplifie le bruit de mesure et impose un filtrage soigneux.

En biomécanique humaine, l'estimation des forces dépend donc du modèle : choix des segments, estimation des masses et des inerties, mesure des forces externes, conventions de repère, filtrage des signaux. Une analyse dynamique inverse peut estimer des moments articulaires nets, mais ces moments n'indiquent pas directement quelle force produit chaque muscle. Comme il y a plus de muscles que de degrés de liberté articulaires, le problème est indéterminé : c'est la redondance musculaire. Plusieurs combinaisons musculaires, avec plus ou moins de co-contraction entre agonistes et antagonistes, peuvent produire un même moment net tout en imposant des forces de contact articulaire et des tensions ligamentaires très différentes (Erdemir et al., 2007). Deux gestes identiques à la vidéo, et même de moment net identique, peuvent donc solliciter l'articulation de façon très différente.

## Ce qu'il faut retenir en pratique

Pour analyser un geste, il faut séparer ce qui est observé directement de ce qui est estimé. Confondre les deux conduit à surinterpréter des images spectaculaires ou à tirer des conclusions trop rapides sur la charge mécanique.

- **La vidéo décrit le mouvement, pas l'effort.** Un geste rapide ou ample n'est pas forcément un geste « en force », et un geste lent peut être très exigeant.
- **Les forces se mesurent ou s'estiment.** Les plateformes de force, les modèles segmentaires et les hypothèses dynamiques permettent d'estimer les forces et les moments, avec des incertitudes qu'il faut connaître et rapporter.
- **Le moment net n'est pas la charge articulaire.** En prévention ou en réadaptation, la co-contraction et la répartition des forces entre les muscles peuvent compter autant que le moment net.

## Figure

![La cinématique décrit le mouvement ; la dynamique relie ce mouvement aux forces et aux moments.](articles/figures/001-force-mouvement.svg)

Source et licence : figure générée avec l'assistance de l'IA pour l'article exemple, CC BY 4.0.

## Usage de l'IA

Cet article exemple, figure comprise, a été généré avec l'assistance de l'IA pour illustrer le format attendu. Il doit être considéré comme un support de démonstration : les affirmations scientifiques, les références et la formulation finale doivent être relues et validées par un auteur humain avant toute intégration comme article final.

## Références

1. Winter DA. (2009). *Biomechanics and Motor Control of Human Movement* (4^e^ éd.). Wiley.
2. Nigg BM, Herzog W. (2007). *Biomechanics of the Musculo-skeletal System* (3^e^ éd.). Wiley.
3. Robertson DGE, Caldwell GE, Hamill J, Kamen G, Whittlesey SN. (2013). *Research Methods in Biomechanics* (2^e^ éd.). Human Kinetics.
4. Halloun IA, Hestenes D. (1985). Common sense concepts about motion. *American Journal of Physics*, 53(11), 1056-1065. <https://doi.org/10.1119/1.14031>
5. Linthorne NP. (2001). Analysis of standing vertical jumps using a force platform. *American Journal of Physics*, 69(11), 1198-1204. <https://doi.org/10.1119/1.1397460>
6. Erdemir A, McLean S, Herzog W, van den Bogert AJ. (2007). Model-based estimation of muscle forces exerted during movements. *Clinical Biomechanics*, 22(2), 131-154. <https://doi.org/10.1016/j.clinbiomech.2006.09.005>
