attach(arch_calib)
plot(arch_calib)

library(stringr)
test <- str_split_fixed(arch_calib[-1, 2], "-", n = 2)
ArchCalib <- test



str(archeodates)
str(ArchCalib)

archcalib_num <- as.numeric(ArchCalib)
str(ArchCalib)
archcalib_num2 <- data.frame(archcalib_num)
ArchCalib<-as.numeric(ArchCalib) 

load("calibrated_arch_dates.RData")
write.csv(ArchCalib, file-"archcalibNEW")

arch_calib_csv <- read.csv('arch_calib_dates.csv', header = TRUE)
str(arch_calib_csv)
arch_calib_csv = arch_calib_csv[-1, ]

ggplot(DosAnasCP2,
       aes(x = DosAnasCP2$`cal yr BP (age before 1950)`, y = d18O))+
  geom_line()+
  geom_bar(data = arch_calib)

??geom_segment

arch_calib_csv$y <- rank(-arch_calib_csv$oldrange)

HumanArrival <- ggplot(arch_calib_csv)+
  geom_segment(aes(x=oldrange, xend=recentrange, y=y, yend=y), color='blue')+
               scale_x_reverse(limits = c(12000, 0))
HumanArrival

FossilData$Fossily <- rank(-FossilData$Calibrated.min)
FossilData$neworder <- c(2, 11, 12, 9, 3, 13, 4, 10, 5, 6, 7, 14, 8, 1)


FossilData <- read.csv('FOSSILDATA.csv')
FossilDataplot <- ggplot(FossilData)+
  geom_segment(aes(x= Calibrated.min, xend= Calibrated.max, y=neworder, yend=neworder), color='red')+
  scale_x_reverse(limits = c(12000, 0))

FossilDataplot
class(FossilData)

?rank

attach('fossil_Cuba_only_Species final LAD.csv')
  

??scale_x_continuous

??geom_segment


O18_test <- ggplot(DosAnasCM, aes(x = age, y = d18O)) +
  geom_line(aes(color = 'Santo Tomas'))+
  geom_line(data = DosAnasCP, aes(x = DosAnasCP$`cal yr BP (age before 1950)`, y = DosAnasCP$d18O, color = 'Dos Anas'))+
  geom_line(data = LL_ISOTOPES_final, aes(x = LL_ISOTOPES_final$Ages, y = LL_ISOTOPES_final$Oxygen18, color = 'Laguna de la Leche'))+
  geom_linerange(data = arch_calib_csv, aes(x = DosAnasCM$age, ymin = arch_calib_csv$oldrange, ymax = arch_calib_csv$recentrange)+
  xlab("Age")+
  ylab("Oxygen 18")+
  ggtitle("O18 Record from 3 Sites in Cuba")+
  scale_x_reverse()+
  theme(legend.title = element_blank())

O18_test



