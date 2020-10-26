library(MASS)
data("birthwt")


count <- 0
bwt <- c(birthwt$bwt)

for(i in 1:length(bwt))
  if (birthwt$age[i] < 20)
  if (birthwt$bwt[i] < 2600)
  if (birthwt$smoke[i] == 1) {
    count <- count + 1
  }
count
