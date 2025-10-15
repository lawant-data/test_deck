GitHub Pages deployment
=======================

This repository includes a GitHub Actions workflow at `.github/workflows/deploy-pages.yml` that:

- Renders `notebooks/presentation.qmd` with Quarto on pushes to `main` or when manually triggered.
- Copies the rendered `notebooks/presentation.html` and supporting `presentation_files/` into the `public/` folder.
- Uploads and deploys the `public/` folder to GitHub Pages.

How to enable:

1. Push this branch to GitHub (ensure your default branch is `main`) and open the repository on github.com.
2. Go to Settings → Pages and confirm the site is publishing from "GitHub Actions" (the workflow will create the site on first successful run).
3. After the workflow runs, your site will be available at `https://<your-username>.github.io/<repo>/`.

If you want the site to use a different path (for example `docs/`), adjust the workflow accordingly.
