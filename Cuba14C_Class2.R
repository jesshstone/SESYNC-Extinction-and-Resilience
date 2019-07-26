ages1 = BchronCalibrate(ages=c(1640, 3720, 4180, 1000, 970), 
                        ageSds=c(130, 70, 80, 105, 80), 
                        calCurves=c('intcal13','intcal13','intcal13', 'intcal13', 'intcal13'))
ages2 = BchronCalibrate(ages = c(1745, 1010, 4200, 1890, 4408, 857), ageSds = c(175, 110, 79, 60, 37, 24), calCurves = c('intcal13', 'intcal13', 'intcal13', 'intcal13', 'Marine13', 'Marine13'))


#open database and filter out columns of site names and calibrated date ranges

archeodates <- "archeodates.csv"
archeodates <- read.csv("~/SESYNC_Extinction_Resilience/archeodates.csv", header=FALSE)
View(archeodates)

library(dplyr)

arch_calib <- select(archeodates, V6, V14)
