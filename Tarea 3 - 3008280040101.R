install.packages("arules")
install.packages("https://mhahsler.github.io/arules/docs/fim4r/fim4r_latest.tar.gz", repos = NULL, type = "source")
system("make --version")
library(arules)
data = read.csv('D:/Censo2018/Censo2018/MIGRACION_BDP.csv', sep = ',')
datamsc <- subset(data, PEI3 == 2)
datamsc2 <- datamsc[, !(names(datamsc) %in% c("PEI3"))]
reglas <- fim4r(datamsc2, method = "fpgrowth", target = "rules", supp = .2, conf = .5)

