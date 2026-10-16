**AI Assistance Declaration:** I used Claude (Anthropic, Claude Sonnet 5.5, October 2026) for drafting and formatting suggestions for the README, the R Markdown documentation and the reflection. Prompts used: listed below. I verified outputs by running the script in R, knitting the .Rmd to HTML, and rendering the Markdown files with pandoc to check the syntax. All final calculations are done by myself. I am responsible for the accuracy and originality of this work.

# Appendix: AI Prompts and Key Responses

**Tool:** Claude (Anthropic), Claude Sonnet 5.5
**Date:** October 2026

## Step 1: README structure

**Seed prompt:** "Explain what sections a good GitHub README for an R data analysis project should include."

**Refinement prompt:** "Revise the sections list so it's concise and uses Markdown headers and bullet formatting."

**Critique/validation prompt:** "Check the Markdown syntax for correctness and readability."

**Key response (final outline):**

```markdown
# Project Title
## Overview            - what the project does and why
## Project Structure   - folders and key files
## Requirements        - R version, packages
## Installation        - how to clone and install dependencies
## Example Usage       - code to run the analysis
## License
## AI Assistance Disclosure
```

**Verification:** compared with a tidyverse README, which uses a similar order (overview, installation, usage, getting help/license).

## Step 2: README.md

**Seed prompt:** "Here's a summary of my R project: [summary: a base-R script that simulates a synthetic sales dataset and summarises revenue by region, saving a CSV and a bar chart; dependencies are base R, plus rmarkdown and knitr for knitting]. Generate a professional README.md file using Markdown."

**Refinement prompt:** "Add sections for Installation, Example Code, and License. Keep tone concise and professional."

**Critique/validation prompt:** "Review the Markdown for syntax errors and suggest 2 improvements for clarity."

**Key response:** a README with the sections in the outline above. Suggested improvements: (1) add a project-structure tree, (2) specify the language on every code fence.

## Step 3: R Markdown file

**Seed prompt:** "Here's my R script description. Suggest Markdown formatting and code block examples."

**Refinement prompt:** "Add syntax highlighting and improve section organization (e.g., # Purpose, ## Inputs, ## Outputs)."

**Critique/validation prompt:** "Is the Markdown consistent with RMarkdown best practices?"

**Key response:** a `.Rmd` with a YAML header, `# Purpose`, `# Inputs`, `# Outputs`, a step-by-step walkthrough using named code chunks, and `eval = FALSE` for the file-writing step.

## Verification and edits

- Ran `Rscript scripts/sales_summary.R`: it runs cleanly and creates `output/revenue_by_region.csv` and `output/revenue_by_region.png`.
- Knitted `sales_summary.Rmd` to HTML: headers, tables, chart and code chunks render correctly.
- Rendered `README.md`, `Reflection.md` and this file with pandoc (GitHub-flavoured Markdown): no syntax errors.
- Compared the README outline with the usual tidyverse README order (overview, installation, usage, license).
- Edits made after review: corrected paths and the clone command, shortened wording, added the project-structure tree.
