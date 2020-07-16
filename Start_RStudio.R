#Reset environment
rm(list=ls()) #remove all variables
gc() #garbage collection
tryCatch({dev.off()}, error = function(e) {}) #clear plots
options(scipen=3, digits=3) #scientific notation and 3 digits
cat("\014") #clear console

#Install/load Packages
{packages <- c("package1","package2","package3")
  install.pckg <- packages[!packages %in% installed.packages()]
  for(i in install.pckg) install.packages(i,dependencies=TRUE)
  suppressMessages(sapply(packages,require,character=TRUE))
  rm(packages, install.pckg, i)}

#Set directory
setwd(dirname(rstudioapi::getActiveDocumentContext()$path)) #Directory to current file path
setwd('..') #Working directory to parent folder

#Read file here and start analyses
