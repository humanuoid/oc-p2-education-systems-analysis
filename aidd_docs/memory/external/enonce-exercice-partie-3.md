# Énoncé OC — Exercice partie 3 : « Analysez des données de systèmes éducatifs »

- Source : https://openclassrooms.com/fr/paths/1039/projects/1828/2063-exercice-partie-3---analysez-des-donnees-de-systemes-educatifs
- Récupéré le 26 novembre 2026 depuis la page ouverte dans le navigateur. Archive intégrale, sans perte d'information.
- Note de la page (8 décembre 2025) : nous avons remplacé Poetry par UV dans le cours support du projet pour l'exercice 3. La fiche d'autoévaluation qui mentionnait Poetry a donc été mise à jour également.

## Introduction

Vous avez désormais réduit votre périmètre en utilisant votre compréhension de la problématique métier et en évaluant la qualité de vos jeux de données. Vous pouvez maintenant vous concentrer sur l'analyse des indicateurs sélectionnés et répondre enfin à la demande de Mark.

Cet exercice vous guide pour mener des analyses statistiques univariées et bivariées, formaliser votre travail et le rendre utilisable par vos collègues si besoin.

## Étape 1 - Identifiez les indicateurs redondants d'un point de vue statistique

**Résultats attendus**

Un dataframe où une ligne correspond à un pays et une colonne à un indicateur. Seuls des indicateurs assez faiblement corrélés entre eux doivent être présents (moins de 70% en valeur absolue du coefficient de corrélation que vous choisissez).
Code + Markdown pour reproduire les analyses des instructions ci-dessous.

**Instructions**

- Calculez une matrice de corrélation entre l'ensemble des indicateurs en utilisant la méthode de Pearson puis de Spearman (consultez le lien dans les ressources ci-dessous si besoin).
- Visualisez les résultats avec une heatmap.
- Supprimez les indicateurs excessivement corrélés (donc redondants).

**Recommandations**

- Utilisez la méthode `corr()` de Pandas pour calculer directement la matrice, ainsi que la fonction `heatmap()` de la librairie Seaborn pour visualiser clairement les résultats.
- Comprenez bien les limites du coefficient de corrélation de Pearson et de Spearman pour bien interpréter vos résultats (quand ne peut-on pas les utiliser ? qu'est-ce qu'ils disent ? et surtout qu'est-ce qu'ils ne disent pas ?)
- Pour choisir entre deux indicateurs très corrélés, gardez le plus pertinent quant à la problématique métier.
- Si vous êtes déjà à l'aise avec ce type d'analyse, utilisez la méthode `pairplot()` de la librairie Seaborn pour avoir une version plus « détaillée » de ce qui se passe derrière une matrice de corrélation.

**Points de vigilance**

Attention, si vous avez un indicateur non renseigné pour un pays, la matrice de corrélation ignorera automatiquement ce pays, et réduira la quantité de données utilisée pour le calcul des matrices, ce qui peut biaiser les résultats.

Assurez-vous donc d'avoir bien travaillé votre gestion des valeurs manquantes en amont.

**Ressources**

- Chapitres « Recherchez les corrélations » et « Analysez la corrélation entre deux variables quantitatives » de la partie 4 du cours « Nettoyez et analysez votre jeu de données ».
- « Corrélation de Spearman - expliqué simplement - DATAtab ».

## Étape 2 - Analysez vos indicateurs restants et formulez une liste de pays pertinents pour l'implantation d'academy

**Résultats attendus**

Un dataframe où une ligne correspond à un pays et une colonne à un indicateur. Seuls des indicateurs faiblement corrélés entre eux doivent être présents.
La liste pertinente de pays selon vos analyses pour répondre à la demande de Mark (sous format liste ou dataframe).
Code + Markdown pour reproduire les analyses des instructions ci-dessous.

**Instructions**

- Choisissez un indicateur (celui que vous voulez) et calculez ses statistiques descriptives basiques puis tracez sa distribution.
- Réécrivez le code de l'instruction ci-dessus dans une fonction, et appliquez-la à l'ensemble des autres indicateurs via une boucle for.
- Interprétez la distribution pour chaque indicateur.
- Proposez une méthode quantitative, sur la base des indicateurs, pour sélectionner des pays et répondre à la demande de Mark.

**Recommandations**

- Utilisez la méthode `describe()` de Pandas pour calculer les statistiques descriptives, et la fonction `displot()` de la librairie Seaborn pour visualiser clairement les distributions des indicateurs.
- Vous devez comprendre chaque ligne du `describe()` (en particulier les quantiles qui vous aident à mieux comprendre la distribution de votre indicateur).
- Si vos graphiques sont trop petits, configurez leur taille en intégrant la ligne de code `plt.figure(figsize=(nombre_1,nombre_2))` juste avant votre graphique Seaborn (`plt` représente la librairie matplotlib.pyplot).
- Un exemple de méthode quantitative serait de prendre le top 5 de pays par indicateur, et de calculer le nombre de pays communs entre plusieurs top 5. Vous pouvez également envisager des moyennes pondérées des différents indicateurs (en fixant les poids selon votre compréhension métier de l'importance des indicateurs).
- L'idée ici est de formuler une recommandation sur la base de ce que dit la donnée.

## Étape 3 - Formalisez vos résultats

**Résultat attendu**

Une présentation au format Gslides ou PowerPoint claire et professionnelle sur un support avec :
- les résultats de l'analyse exploratoire ;
- vos conclusions quant à la pertinence de l'usage du jeu de données pour répondre aux questions stratégiques que se pose l'entreprise.

**Recommandations**

- Partez du principe que l'audience ne suit le sujet que de loin, c'est d'ailleurs souvent le cas en entreprise. Certaines informations (comme le contenu de chaque jeu de données, et leur taille) vous paraissent évidentes à ce stade à force d'analyser les données. Toutefois, il est toujours mieux de consacrer une slide à la présentation des jeux de données pour situer le contexte de toutes les analyses qui suivent.
- Expliquez la méthodologie et les hypothèses utilisées pour assainir le jeu de données et réduire le nombre d'indicateurs.
- Pour vos différents graphiques, assurez-vous d'avoir des screenshots avec des axes X et Y et du texte clair et lisible.
- Prenez du recul sur les données pour apporter des pistes de réponses concrètes à la problématique d'expansion initialement présentée par votre manager.
- Vous devez connaître le sens métier des indicateurs finaux que vous allez recommander pour l'expansion à l'international.
- Mettez en place une logique de storytelling :
  - Veillez à ne pas présenter vos résultats de façon scolaire.
  - Essayez de les rendre les plus intelligibles possibles et accessibles aux personnes non techniques.
- Vous pouvez vous inspirer du cours en ressource ci-dessous mais vous n'êtes pas obligés d'en appliquer tous les conseils à ce niveau de votre parcours.
- Essayez au maximum d'adopter une posture de professionnel de la data en poste qui présenterait ses résultats : soignez donc la présentation en conséquence.

**Ressources**

- DESIGN « Communiquez et formalisez vos idées par le storytelling » (Facile)
- SOFT SKILLS « Améliorez l'impact de vos présentations » (Facile)

## Étape 4 - Rendez vos analyses et vos résultats reproductibles par vos collègues

**Instructions**

Suivez étape par étape la ressource sur UV ci-dessous pour :
- comprendre comment créer un environnement virtuel ;
- créer celui-ci avec un fichier pyproject.toml pour rendre votre projet reproductible.

**Résultat attendu**

Un fichier pyproject.toml contenant toutes les librairies nécessaires pour réaliser vos analyses.

**Recommandations**

- Demandez à votre mentor de vous tester en vous posant des questions afin de vous habituer à argumenter pour y répondre.
- Soyez prêt à justifier et à présenter votre méthodologie (étapes, outils, cohérence des résultats).

**Ressource**

- DATA « Gérez votre environnement Python avec UV » (Facile)

## Étape 5 - Vérifiez votre travail et faites le point avec votre mentor

Pour vérifier que vous n'avez rien oublié dans la réalisation de votre exercice, téléchargez et complétez la partie 3 de la fiche d'autoévaluation.

Parlez-en avec votre mentor durant votre dernière session de mentorat.
