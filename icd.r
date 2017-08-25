icd$id = c(1:69823)
# http://stackoverflow.com/questions/5620885/how-does-one-reorder-columns-in-a-data-frame
icd = icd[,c(3,1,2)]
names(icd)
# deleting row names

setNames(icd, rep(" ", length(icd)))
library(dplyr)
rename(icd, code = V1 ,  name = V2 )

str(icd)
icd = icd[,c(1,2)]

write.csv(icd,file ="icd1.csv")
tail(disease)
disease[60510,]

icd2 = icd[complete.cases(icd),]
icd3 = na.omit(icd2)
icd2[8044,]

tail(disease)


