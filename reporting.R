print("REPORTING")

setwd("./reporting")
unlink("_bookdown.yml", recursive = TRUE)
unlink("report.Rmd", recursive = TRUE)

files = c('index.Rmd',
          "toc.Rmd",
          "summary.Rmd",
          'results.Rmd',
          'supp.Rmd'
          )

cat("book_filename: 'report' \noutput_dir: 'temp_save' \nrmd_files: ['",
    paste0(files, collapse = "', '"), "']",
    file = "_bookdown.yml", sep = "")

rmarkdown::render_site(encoding = 'UTF-8', )

unlink("_bookdown.yml", recursive = TRUE)
unlink("report.Rmd", recursive = TRUE)

setwd('..')