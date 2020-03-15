#==========================================================
# SUMMARY STATISTICS
#==========================================================

#Continuous variables
db <- read.csv("./Your_File_From_Working_Directory.csv")
nums <- unlist(lapply(db, is.numeric)) #Only numeric variables

nums.mean <- sapply(db[,nums],mean)
nums.std <- sqrt(sapply(db[,nums],var))
nums.min <- sapply(db[,nums],min)
nums.max <- sapply(db[,nums],max)

nums.summary <- t(rbind(nums.mean, nums.std, nums.min, nums.max))
write.csv(nums.summary,"./ContVarSummary.csv")

#Categorical variables
cats <- which(nums==FALSE)
max.cat.i <-  rep(NA, length(cats))
for (i in 1:length(cats)) max.cat.i[i] <- length(unique(db[,(cats[i])]))
max.cat <- max(max.cat.i)
cats.table <- cats.levels <- matrix(NA,nrow=length(cats),ncol=max.cat)

j=1
while (j<=length(cats)) {
  for (i in (cats)) {
    cats.table[j,1:max.cat.i[j]] <- round(table(db[,i])/nrow(db),2)
    cats.levels[j,1:max.cat.i[j]] <- names(table(db[,i]))
    j=j+1
  }  
}
rownames(cats.table) <- rownames(cats.levels) <- names(cats)

cats.summary <- rbind(cats.table,rep(NA, length(cats)),cats.levels)
write.csv(cats.summary,"./CategVarSummary.csv")