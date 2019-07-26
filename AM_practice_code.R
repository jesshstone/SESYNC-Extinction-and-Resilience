load("calibrated_arch_dates.RData")
ls() #returns a list of all the objects you just loaded (and anything else in your environment)
write.csv(arch_calib,
          file="arch_calib.csv")

arch_calib_dates <- read.csv('arch_calib.csv', header = TRUE)
arch_calib_dates$oldrange <- c(000, 1860, 4930, 4870, 1180, 1060, 2060, 1180, 4960, 1990, 4720, 530, 1630, 3920, 1300, 3210, 1510, 1210, 740, 970, 1290, 1540, 6300, 3340, 2150, 4860, 3720, 730, 690, 730, 700, 650, 3680, 800, 4830, 730, 740, 1350, 910, 6290, 5320, 2860, 670, 1170, 920, 1210, 2080, 1280, 2310, 1180, 1880, 930, 2950, 2330, 550, 2340)
arch_calib_dates$recentrange <- c(000, 1300, 3870, 4440, 700, 720, 1300, 700, 4440, 1690, 4420, 440, 1410, 3700, 1170, 2980, 1330, 1040, 530, 680, 760, 1280, 5740, 2680, 1730, 4000, 3220, 530, 550, 550,480, 470, 2790, 150, 4440, 550, 340, 1180, 340, 5590, 4830, 2740, 520, 680, 700, 1040, 1870, 930, 1740, 730, 1280, 670, 2570, 2140, 480, 1820) 
arch_calib_dates

write.csv(arch_calib_dates, file = "arch_calib_dates.csv")

arch_calib_dates

library(ggplot2)

fossildata <- read.csv(fossil_Cuba)