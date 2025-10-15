# Quarto + R environment for crypto_market

This project uses Quarto for reproducible reports and R for data analysis. The repository includes a bootstrap script to create an isolated R environment using `renv`, a sample Quarto document, and Makefile targets to build documents.

Quick start

1. From the project root, run the R bootstrap to create a project-local environment:

```bash
Rscript scripts/bootstrap.R
```

2. Install Quarto (see https://quarto.org/docs/get-started/) or use your system package manager.

3. Render the example Quarto document:

```bash
make quarto
```

Files added

- `scripts/bootstrap.R` — sets up `renv` and installs common R packages.
- `project.qproj` — Quarto project config.
- `notebooks/example.qmd` — sample Quarto document.
- `Makefile` — convenience targets for rendering.
- `.Rprofile` — project startup helpers.
