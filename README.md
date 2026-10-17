**AI Assistance Declaration:** I used Claude (Anthropic, Claude Sonnet 5.5, October 2026) for drafting and formatting suggestions for the README, the R Markdown documentation and the reflection. Prompts used: see `Appendix.md`. I verified outputs by running the script in R, knitting the .Rmd to HTML, and rendering the Markdown files with pandoc to check the syntax. All final calculations are done by myself. I am responsible for the accuracy and originality of this work.

---

# Markdown Buddy: Synthetic Sales Summary in R

A small R project that simulates a synthetic sales dataset and summarises revenue by region. It was built for BDA400 Assignment 1 to practise clear, professional project documentation.

## Overview

The script generates 200 simulated orders (region, product, units, unit price), calculates total revenue per region, and saves a CSV table and a bar chart. All data is synthetic; no real or personal data is used.

## Project Structure

```text
.
├── README.md              # Project overview (this file)
├── sales_summary.Rmd      # R Markdown documentation of the script
├── scripts/
│   └── sales_summary.R    # Main analysis script
├── Reflection.md          # Reflection questions
└── Appendix.md            # AI prompts and key responses
```

## Requirements

- R 4.0 or later
- [RStudio](https://posit.co/download/rstudio-desktop/) or [Posit Cloud](https://posit.cloud/) (recommended for knitting)
- R packages `rmarkdown` and `knitr` (only needed to knit the `.Rmd`)

The analysis script itself uses base R only.

## Installation

Clone the repository:

```bash
git clone https://github.com/balwindersinghbangar88-boop/markdown-buddy-balwinder.git
cd markdown-buddy-balwinder
```

Install the packages needed for knitting:

```r
install.packages(c("rmarkdown", "knitr"))
```

## Example Usage

Run the script from the project root:

```bash
Rscript scripts/sales_summary.R
```

or from an R session:

```r
source("scripts/sales_summary.R")
```

The script creates an `output/` folder containing `revenue_by_region.csv` and `revenue_by_region.png`.

To render the documentation, open `sales_summary.Rmd` in RStudio and click **Knit**, or run:

```r
rmarkdown::render("sales_summary.Rmd")
```

## License

Released under the [MIT License](https://opensource.org/licenses/MIT). Created for educational purposes.

## AI Assistance Disclosure

- **Tool:** Claude (Anthropic), Claude Sonnet 5.5, October 2026.
- **Main prompts:**
  1. "Explain what sections a good GitHub README for an R data analysis project should include."
  2. "Revise the sections list so it's concise and uses Markdown headers and bullet formatting."
  3. "Here's a summary of my R project: [summary]. Generate a professional README.md file using Markdown."
  4. "Add sections for Installation, Example Code, and License. Keep tone concise and professional."
  5. "Review the Markdown for syntax errors and suggest 2 improvements for clarity."

  Full prompts and key responses are in [`Appendix.md`](Appendix.md).
- **Changes after review:** I ran the script and knitted the `.Rmd` to confirm they work, rendered the Markdown to check the syntax, corrected file paths and commands, and edited the wording for conciseness.
