#Reset environment
rm(list=ls())
options(scipen = 4)

#Packages
{packages <- c("readxl","WVPlots","ggplot2","car","corrplot","MASS","PerformanceAnalytics")
  install.pckg <- packages[!packages %in% installed.packages()]
  for(i in install.pckg) install.packages(i,dependencies=TRUE)
  suppressMessages(sapply(packages,require,character=TRUE))
  rm(packages, install.pckg, i)}

#Get database
setwd(dirname(rstudioapi::getActiveDocumentContext()$path)) #Directory to current file
setwd('..') #Working directory to parent folder