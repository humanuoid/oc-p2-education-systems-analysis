# Codebase Map

```mermaid
flowchart TD
    NB["notebooks/ : 3 notebooks d'analyse"]
    IN["data/input/ : CSV bruts EdStats"]
    OUT["data/output/ : CSV nettoyés"]
    SRC["src/p2_education_systems_analysis/ : package Python (scaffold uv, quasi vide)"]
    MK["Makefile : download, jupyter, stop"]
```

## Areas

- `notebooks/`: `data_overview.ipynb`, `data_quality.ipynb`, `dataset_reduction.ipynb`
- `data/input/`: 5 CSV EdStats bruts (non versionnés)
- `data/output/`: CSV nettoyés produits par les notebooks
- `src/p2_education_systems_analysis/`: package créé par `uv init`, contient seulement un `main()` hello
- `Makefile`: `make download` (archive EdStats), `make jupyter`, `make stop`

## Entry points

- Les notebooks, ouverts via JupyterLab (`make jupyter`, port 8888)
