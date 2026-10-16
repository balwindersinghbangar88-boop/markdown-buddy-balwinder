**AI Assistance Declaration:** I used Claude (Anthropic, Claude Sonnet 5.5, October 2026) for drafting and formatting suggestions for the README, the R Markdown documentation and the reflection. Prompts used: see `Appendix.md`. I verified outputs by running the script in R, knitting the .Rmd to HTML, and rendering the Markdown files with pandoc to check the syntax. All final calculations are done by myself. I am responsible for the accuracy and originality of this work.

# Reflection

## 1. How did AI tools help, and where did they fall short, when drafting your documentation?

AI was most useful for structure. It quickly suggested the README sections (Overview, Installation, Example Usage, License) and formatted headers, tables and code blocks consistently, which saved time on boilerplate. It fell short on specifics: it cannot know my real folder layout, GitHub username or what I actually ran, so I had to check every path, command and claim myself. Its first drafts also sounded generic, so I edited them to be concise and accurate.

## 2. How did you validate and refine the AI-generated Markdown?

I ran the R script to confirm it produces the CSV and chart that the documentation describes, knitted the `.Rmd` to HTML to confirm that headers, tables, the plot and code chunks render, and rendered the README, Reflection and Appendix with a Markdown renderer (pandoc) to check the syntax. I also checked that every path and command in the README matches the real file layout, and shortened wordy sections.

## 3. What ethical practices did you follow when using AI?

I used only synthetic data, so no real or personal information went to an AI tool. I disclosed the tool, version, date and prompts in an AI Assistance Declaration at the top of every file and in `Appendix.md`. I treated AI output as a draft, not an answer: I read it and tested it before submitting, and I take responsibility for the accuracy and originality of the final work.
