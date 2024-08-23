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
    '4-intro-to-formr.Rproj',
    'demoSurvey.qmd',
    'practiceSurvey_solutions.qmd',
    'practiceSurvey.qmd'
)

# Create zip files of class notes
zip::zip(
    zipfile = paste0(lesson, ".zip"),
    files = c(files3, paste0(lesson, ".Rproj"))
)
