# Project Brief

## What it is

- Projet P2 de la formation Data Engineer (OpenClassrooms) : analyse exploratoire des données d'éducation de la Banque mondiale (EdStats), menée dans des notebooks Jupyter

## Why it exists

- Jeu de rôle OC : Mark (manager) confie une mission d'analyse exploratoire : déterminer si les données EdStats permettent d'enrichir la réflexion sur le projet d'expansion internationale d'academy (cours en ligne)
- Objectif : explorer les pays à fort potentiel de clients et l'évolution de ce potentiel, pour guider le choix des pays d'implantation

## Domain language

| Term | Meaning |
| ---- | ------- |
| EdStats | jeu de données de la Banque mondiale sur l'éducation (5 CSV) |
| Indicateur | série statistique (ex. taux de scolarisation) |
| PHx.y-nn | numéro d'issue GitHub du projet (voir `backlog.md`) |
| input / output | `data/input/` brut, jamais modifié / `data/output/` produit par l'analyse |

## Key features

- 3 notebooks : `data_overview.ipynb`, `data_quality.ipynb`, `dataset_reduction.ipynb`
- Téléchargement des données brutes : `make download`
- Flux `data/input/` → notebooks → `data/output/`
