# Hello World R App

This is a tiny standalone Shiny application.

## Run locally

Install Shiny if needed:

```r
install.packages("shiny", repos = "https://cloud.r-project.org")
```

Start the app from this directory:

```bash
Rscript -e 'shiny::runApp(".")'
```

Or from the repository root:

```bash
Rscript -e 'shiny::runApp("examples/hello-world-r")'
```
