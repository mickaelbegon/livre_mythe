// Version Typst de 002-contre-mouvement-saut.md
// Les références sont gérées par 002-contre-mouvement-saut.bib (citations @clé).

#import "../templates/article.typ": article

#let meta = (
  id: "002",
  title: "Pourquoi saute-t-on plus haut avec un contre-mouvement ?",
  status: "mythe",
  chapter: "sauts-ssc",
  summary: "Le contre-mouvement améliore la hauteur de saut, mais cet avantage ne s'explique pas principalement par le stockage et la restitution d'énergie élastique.",
  take_home: "La descente prépare le système neuromusculaire : l'activation et la force sont déjà élevées au début de la propulsion, ce qui augmente l'impulsion et donc la vitesse de décollage.",
  confidence: "eleve",
  keywords: ("saut vertical", "countermovement jump", "squat jump", "cycle étirement-raccourcissement", "activation musculaire", "impulsion", "énergie élastique"),
  authors: (
    (
      name: "",
      affiliation: "",
      email: "",
      orcid: "",
      roles: ("redaction", "relecture"),
    ),
  ),
  figure: (
    path: "figures/002-cmj-sj-comparaison.png",
    caption: "Saut avec contre-mouvement (CMJ) et saut sans contre-mouvement (SJ).",
    credit: "À préciser",
    license: "À préciser",
  ),
)

#show: article.with(meta)

= En bref

*Statut~:* mythe. L'idée visée est la suivante~: «~on saute plus haut avec un contre-mouvement parce que la descente charge un ressort élastique qui restitue ensuite son énergie~».

*Message central~:* l'énergie élastique existe, mais elle est présente aussi dans le saut sans contre-mouvement et n'explique qu'une petite part de l'écart. L'avantage vient surtout de la descente, qui permet aux muscles extenseurs d'être déjà activés et de produire une force élevée au moment où la poussée commence.

*Niveau de confiance~:* élevé.

= Pourquoi on pourrait y croire

Dans un saut avec contre-mouvement (_countermovement jump_, CMJ), on descend rapidement avant de pousser vers le haut. Dans un saut sans contre-mouvement (_squat jump_, SJ), on part déjà fléchi et on pousse directement. Le CMJ est presque toujours plus haut que le SJ, en général de quelques centimètres, soit de l'ordre de 5 à 15~%.@vanhooren2017cmj @kozinc2022cmjsj

L'explication la plus répandue est celle du ressort~: on descendrait pour «~charger~» les muscles et les tendons, puis on remonterait grâce à l'énergie restituée. L'image est intuitive, elle ressemble à ce qu'on ressent en rebondissant, et le nom même de «~cycle étirement-raccourcissement~» la suggère. Sur le terrain, l'écart entre CMJ et SJ est d'ailleurs souvent présenté comme un indice de «~qualités élastiques~» de l'athlète. Cette image ne résiste pourtant pas bien aux mesures et aux modèles.

= Explication grand public

Un muscle ne produit pas sa force maximale instantanément~: il lui faut un peu de temps pour s'activer, et les tissus (muscles, tendons) doivent d'abord se tendre avant de transmettre efficacement la force aux os.

Dans le SJ, tout ce travail de mise en route se fait _pendant_ la poussée~: au début de l'extension, les muscles ne poussent pas encore à pleine force, et une partie de la course disponible est perdue. Dans le CMJ, c'est la descente qui fait ce travail. Pour freiner le corps qui descend, les extenseurs de la hanche, du genou et de la cheville doivent déjà pousser fort. Quand la remontée commence, ils sont activés, les tissus sont tendus, et la poussée démarre d'emblée avec une force élevée.

Plus la force exercée sur le sol est grande et longtemps maintenue, plus le corps quitte le sol avec une vitesse verticale élevée, et plus il monte haut. Les tendons stockent bien un peu d'énergie pendant le saut, mais ils le font aussi dans le SJ~: ce n'est pas ce qui fait la différence.

#figure(
  image("figures/002-cmj-sj-comparaison.png", width: 100%),
  caption: [Saut avec contre-mouvement (CMJ) et saut sans contre-mouvement (SJ). Dans le CMJ, une descente rapide précède la propulsion~; dans le SJ, la propulsion part d'une position fléchie immobile.],
) <fig-cmj-sj>

= Explication scientifique

== Ce que change le contre-mouvement

Le SJ commence en position fléchie, et la propulsion démarre depuis une situation presque statique. Le CMJ ajoute une descente rapide, suivie d'une phase de freinage actif juste avant la remontée. Pour freiner la descente du centre de masse, les extenseurs des membres inférieurs produisent déjà une force importante. Le contre-mouvement permet ainsi de commencer la poussée avec un état actif (la fraction de ponts actine-myosine formés) et une force déjà élevés, tout en réduisant le jeu mécanique (_muscle slack_) du système muscle-tendon.@vanhooren2017cmj @bobbert1996cmj @bobbert2005active

== De la force à la hauteur de saut

Une activation plus élevée permet aux extenseurs de développer plus tôt davantage de force et, compte tenu de leurs bras de levier, des moments articulaires d'extension plus élevés. Ces moments ne se traduisent pas un pour un en force verticale~: c'est leur combinaison avec la posture et la coordination intersegmentaire qui détermine la force exercée sur le sol. La composante verticale de la réaction du sol, $F_z$, accélère le centre de masse vers le haut dès qu'elle dépasse le poids du corps~:

$ m thin a_z = F_z - m thin g $

où $m$ est la masse corporelle, $a_z$ l'accélération verticale du centre de masse et $m thin g$ le poids. En intégrant depuis la position immobile initiale jusqu'au décollage, on obtient la vitesse verticale au décollage $v_z$, puis la hauteur $h$ gagnée par le centre de masse pendant le vol~:

$ v_z = 1/m integral (F_z - m thin g) dif t quad "et" quad h = v_z^2 / (2 thin g) $

Si le CMJ augmente suffisamment tôt et suffisamment longtemps la force verticale nette pendant la propulsion, il augmente l'impulsion verticale, donc la vitesse de décollage et la hauteur du saut.

#figure(
  image("figures/002-cmj-sj-activation-impulsion.png", width: 72%),
  caption: [Du contre-mouvement à la vitesse de décollage~: la descente met les tissus en tension et laisse le temps aux extenseurs de s'activer~; la propulsion démarre avec une force élevée, ce qui augmente l'impulsion verticale et la vitesse de décollage.],
) <fig-activation-impulsion>

== Ce que l'on peut quantifier

Dans l'étude classique de Bobbert _et al._, six volleyeurs réalisaient des CMJ et des SJ. Même lorsque la position du corps au début de la propulsion était identique dans les deux sauts, le CMJ restait en moyenne 3,4~cm plus haut. Les auteurs ont écarté une moins bonne coordination en SJ, puis, à l'aide d'un modèle musculo-squelettique, le stockage-restitution d'énergie élastique comme explication. L'avantage était attribué à des moments articulaires plus élevés au début de la poussée, qui permettent de produire davantage de travail pendant la première partie de l'extension.@bobbert1996cmj

Dans le modèle de Bobbert et Casius, le développement préalable de l'état actif suffisait à expliquer un avantage du CMJ compris entre 0,4 et environ 2,5~cm, selon la vitesse de montée de la stimulation imposée au modèle. Ce sont surtout les extenseurs de la hanche qui produisaient davantage de force et de travail, pendant les premiers 30~% de leur course de raccourcissement.@bobbert2005active L'activation préalable n'est donc pas seulement une explication qualitative~: son effet représente une part mesurable de l'écart CMJ–SJ.

== Le rôle exact de l'énergie élastique

Les tendons et les aponévroses stockent et restituent effectivement de l'énergie pendant un saut. Mais le système muscle-tendon ne se comporte pas comme un ressort unique~: au même instant, les fascicules musculaires peuvent se raccourcir pendant que les structures tendineuses s'allongent.

Les mesures échographiques de Kurokawa _et al._ sur le gastrocnémien médial de huit hommes l'illustrent. Pendant la descente du CMJ, le complexe muscle-tendon ne se raccourcissait que de 1,6~%, alors que les fascicules se raccourcissaient de 10,4~% et que les structures tendineuses s'allongeaient de 2,2~%. Au début de la remontée, les fascicules se raccourcissaient encore de 19,2~%, tandis que les structures tendineuses s'allongeaient de 4,4~%. Les auteurs estimaient qu'environ 1,0~J était stocké dans la seconde moitié de la descente et 5,6~J au début de la remontée, puis qu'environ 3,8~J étaient restitués pendant la phase finale de poussée. Les fibres n'étant pas étirées pendant le contre-mouvement, un réflexe d'étirement ou une potentiation de la composante contractile ne pouvait pas, pour ce muscle, expliquer le gain de travail. Surtout, ce comportement était très semblable à celui observé en SJ.@kurokawa2003cmj

Le même groupe avait en effet mesuré, en SJ, un raccourcissement des fascicules de 26~% pendant que les structures tendineuses s'allongeaient de 6~%, avec environ 4,9~J d'énergie élastique stockée puis restituée en fin de poussée.@kurokawa2001sj Ces chiffres ne concernent qu'un seul muscle et ne sont pas transposables à l'ensemble du membre inférieur, mais ils montrent que le stockage élastique n'est pas propre au CMJ.

Les simulations d'Anderson et Pandy vont dans le même sens. Dans leur modèle, les tissus élastiques délivraient presque autant d'énergie au squelette en CMJ qu'en SJ~: le SJ stockait presque autant d'énergie, et le CMJ en dissipait davantage sous forme de chaleur. Augmenter la compliance des tendons accroissait le stockage élastique, mais réduisait d'autant l'énergie fournie par les éléments contractiles, si bien que la hauteur de saut restait presque inchangée.@anderson1993elastic L'énergie élastique améliore surtout l'efficacité du saut et la puissance en fin de poussée~; elle n'explique pas l'avantage du CMJ sur le SJ.

= Ce qu'il faut retenir en pratique

- *Formulation plus juste.* On descend rapidement pour préparer le système muscle-tendon~: les muscles s'activent, les tissus se mettent en tension, et la propulsion démarre avec une force verticale plus élevée.
- *L'écart CMJ–SJ n'est pas un indice d'élasticité.* Un grand écart peut refléter une bonne utilisation du contre-mouvement, mais aussi une difficulté à monter rapidement en force et à «~prendre le jeu~» du système muscle-tendon en SJ.@vanhooren2017cmj Sur 770 participants, les groupes qui sautaient le plus haut n'étaient pas ceux qui présentaient le plus grand écart.@kozinc2022cmjsj Un écart plus faible n'est donc pas forcément un défaut.
- *Standardiser les tests.* Le SJ doit partir d'une position réellement immobile, sans petit contre-mouvement préalable, et avec une profondeur comparable à celle du CMJ~; sinon, l'écart mesuré mélange technique d'exécution et capacités neuromusculaires.

= Figures

Source et licence des figures~: à préciser.

#bibliography("002-contre-mouvement-saut.bib", title: [Références], style: "american-medical-association")
