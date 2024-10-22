lesson <- strsplit(here::here(), "/")[[1]]
lesson <- lesson[length(lesson)]

# Build the slides
renderthis::to_html("index.Rmd", "index.html")
renderthis::to_pdf("index.html", paste0(lesson, ".pdf"))

# Compress the PDF to reduce size
tools::compactPDF(paste0(lesson, ".pdf"), gs_quality = 'ebook')

files1 <- c( 
    '1-getting-started.Rproj',
    'intro-to-R.R'
)

files2 <- c(
    '2-data-wrangling.Rproj',
    'data',
    'practice-solutions.R',
    'practice.R'
)

files3 <- c(
    '3-quarto-plotting.Rproj',
    'bears_solutions.qmd',
    'bears.qmd',
    'data',
    'ggplot2_solutions.qmd',
    'ggplot2.qmd',
    'logo.png',
    'quarto_demo.qmd'
)

files4 <- c(
    'demoSurvey',
    'practiceSurvey'
)

files7 <- c(
    '7-utility-models.Rproj',
    'data',
    'simulate-choices.R',
    'practice-solutions.qmd',
    'practice.qmd'
)

files8 <- c(
    '8-optimization-mle.Rproj',
    'data',
    'practice-solutions.qmd',
    'practice.qmd'
)

files9 <- c(
    '9-uncertainty.Rproj',
    'data',
    'practice-solutions.qmd',
    'practice.qmd'
)

# Create zip files of class notes
zip::zip(
    zipfile = paste0(lesson, ".zip"),
    files = files9
)
