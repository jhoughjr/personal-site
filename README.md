# jimmyhoughjr.net

The apex site: an Astro blog and portfolio, served by the `blog` app on the house estate at [jimmyhoughjr.net](https://jimmyhoughjr.net).

- Posts live in `src/content/blog`, one Markdown file each.
- Portfolio entries live in `src/content/portfolio`, one Markdown file per project, with a title, a description, an optional link and optional tags; `src/pages/portfolio.astro` draws them.
- `npm install`, then `npm run dev` to work on it and `npm run build` to build `dist/`.

The site deploys with `git push dokku main`.
