# P2 — Analyse des données des systèmes éducatifs

## Données

Les fichiers CSV EdStats ne sont **pas versionnés** dans ce dépôt (trop volumineux) : le dossier `data/` contient un `.gitignore` qui ignore les `*.csv` récursivement.

### Téléchargement

Pour obtenir les données brutes, lancez :

```bash
make download
```

Cela télécharge l'archive ZIP EdStats et l'extrait dans `data/input/` (5 fichiers CSV).

### Flux des données

```
data/input/   → données brutes d'origine (EdStats), jamais modifiées
data/output/  → CSV nettoyés, produits par la phase d'analyse
```

L'archive originale est disponible à l'URL suivante (déjà câblée dans le `Makefile`) :

https://s3-eu-west-1.amazonaws.com/static.oc-static.com/prod/courses/files/Parcours_data_scientist/Projet+-+Donn%C3%A9es+%C3%A9ducatives/Projet+Python_Dataset_Edstats_csv.zip
