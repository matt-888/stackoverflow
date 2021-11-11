library(bookdown)
library(tinytex)
library(knitr)
library(xtable)
library(cowplot)
library(tidyverse)

ui <- bootstrapPage(
  downloadButton("generate_report", label='', icon = icon('book icon'))
)

server <- function(input, output) {
  
  output$generate_report <- downloadHandler(
    filename = function(){"Report.pdf"},
    content = function(file){
      
      source("reporting.R", local = T)
      
      file.copy("reporting/temp_save/report.pdf", file)
    }
  )
  
}

shinyApp(ui = ui, server = server)