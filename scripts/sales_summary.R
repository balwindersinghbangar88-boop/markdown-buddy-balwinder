# AI Assistance Declaration: I used Claude (Anthropic, Claude Sonnet 5.5, October 2026) for drafting and formatting suggestions for the README, the R Markdown documentation and the reflection. Prompts used: see Appendix.md. I verified outputs by running the script in R, knitting the .Rmd to HTML, and rendering the Markdown files with pandoc to check the syntax. All final calculations are done by myself. I am responsible for the accuracy and originality of this work.

# sales_summary.R
# Purpose: Simulate a synthetic sales dataset and summarise revenue by region.
# Inputs : none (data is simulated; no real or personal data is used)
# Outputs: output/revenue_by_region.csv and output/revenue_by_region.png
# Usage  : Rscript scripts/sales_summary.R   (run from the project root)

# 1. Simulate data ------------------------------------------------------------
set.seed(400)
n <- 200

sales <- data.frame(
  order_id   = seq_len(n),
  region     = sample(c("East", "West", "North", "South"), n, replace = TRUE),
  product    = sample(c("Widget", "Gadget", "Gizmo"), n, replace = TRUE),
  units      = rpois(n, lambda = 5) + 1,
  unit_price = round(runif(n, min = 10, max = 50), 2)
)
sales$revenue <- sales$units * sales$unit_price

# 2. Summarise revenue by region ----------------------------------------------
by_region <- aggregate(revenue ~ region, data = sales, FUN = sum)
by_region <- by_region[order(-by_region$revenue), ]
by_region$revenue <- round(by_region$revenue, 2)

# 3. Save results -------------------------------------------------------------
dir.create("output", showWarnings = FALSE)
write.csv(by_region, "output/revenue_by_region.csv", row.names = FALSE)

png("output/revenue_by_region.png", width = 800, height = 500)
barplot(by_region$revenue, names.arg = by_region$region,
        main = "Total Revenue by Region (Synthetic Data)",
        xlab = "Region", ylab = "Revenue ($)", col = "steelblue")
invisible(dev.off())

print(by_region)
