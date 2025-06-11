library(rmarkdown)
library(tidyverse)
library(kableExtra)
# library(papaja)
library(stringr)

home <- Sys.getenv("HOME")
bibfile <- paste0(home,'/bib/library.json')

source(paste0(home,"/Dropbox/Pandoc/pandoc_DATADIR/rmarkdown/commonfunctions.R"))

files <- list.files(pattern = '^0|1') #use this!
files <- str_subset(files, '.rmd')

# week3 <- "01-PHRM1102_Week3_EdgeTemplate.rmd"
# week7 <- "02-PHRM1102_Week7_EdgeTemplate.rmd"
# # week12 <- "HABS0014A_Edge_Week12.rmd"
# moe <- "03-PHRM1102_Measuresofeffect.rmd"

# ass <- "03-AssignmentNotes.rmd"
# vig <- "90-vignettes.rmd"

# wks3 <- "93-PHRM1102-W3-Workshop.rmd"
# wks7 <- "97-PHRM1102-W7-Workshop.rmd"

# comb <- c(week3, week7)

# for (i in seq_along(comb)){

# render(
#     input = comb[i],
#     output_dir = "output",
#     output_format = 'bookdown::word_document2',
#     output_file = paste0(comb[i], ".docx"))
# }



render(
    input = files[1],
    output_dir = 'output',
    output_format = "bookdown::pdf_document2",
    # output_file = paste0(file,"_NOTES.pdf"),
    # params = list(pres = FALSE, notes = TRUE)
    )

