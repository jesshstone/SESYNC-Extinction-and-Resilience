library(ggplot2)

## Clean up Dos Anas CP
attach(Fensterer_CP)
DosAnasCP2 <- Fensterer_CP
DosAnasCP2 <- DosAnasCP2[-c(132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143),]

## Santo Tomas (fensterer_CM)
attach(fensterer_CM)
SantoTomasCM <- fensterer_CM
ST_o18 <- ggplot(DosAnasCM,
       aes(x = DosAnasCM, y = d18O))+
  geom_line()
plot(ST_o18)

ST_c13 <- ggplot(SantoTomasCM,
       aes(x = SantoTomasCM$`age[ka]`, y = d13C))+
  geom_line()

## Dos Anas (fensterer_Cp)
DA_o18 <- ggplot(DosAnasCP2,
       aes(x = DosAnasCP2$`cal yr BP (age before 1950)`, y = d18O))+
  geom_line()
DA_c13 <- ggplot(DosAnasCP2,
       aes(x = DosAnasCP2$`cal yr BP (age before 1950)`, y = d13C))+
  geom_line()

## Laguna de la Leche
## attach the NEW LL isotopes file from google drive! 
attach(LL_ISOTOPES_final)
LL <- LL_ISOTOPES_final
LL_o18 <- ggplot(LL,
       aes(x = LL_ISOTOPES_final$Ages, y = `Oxygen18`))+
  geom_line()+
  geom_smooth()
plot(LL_o18)

LL_c13 <- ggplot(LL,
       aes(x = LL_ISOTOPES_final$Ages, y = `Carbon13`))+
  geom_line()

##correcting the ages of Santo Tomas CM
SantoTomasCM$`age[ka]` <- SantoTomasCM$`age[ka]` * 1000

## layering the plots (oxygen18)
O18<- ggplot(DosAnasCM, aes(x = DosAnasCM$age, y = DosAnasCM$d18O))+ geom_line(aes(color = 'Santo Tomas'))+
  geom_line(data = DosAnasCP, aes(x = DosAnasCP$`cal yr BP (age before 1950)`, y = DosAnasCP$d18O, color = 'Dos Anas'))+
  geom_line(data = LL_ISOTOPES_final, aes(x = LL_ISOTOPES_final$Ages, y = LL_ISOTOPES_final$Oxygen18, color = 'Laguna de la Leche'))+
  xlab("Age")+
  ylab("Oxygen 18")+
  ggtitle("O18 Record from 3 Sites in Cuba")+
  scale_x_reverse()+
  theme(legend.title = element_blank())
plot(O18)

## layering the plots (carbon13)
C13 <- ggplot(DosAnasCM, aes(x = DosAnasCM$age, y = DosAnasCM$d13C))+ geom_line(aes(color = 'Santo Tomas'))+
  geom_line(data = DosAnasCP, aes(x = DosAnasCP$`cal yr BP (age before 1950)`, y = DosAnasCP$d13C, color = 'Dos Anas'))+
  geom_line(data = LL_ISOTOPES_final, aes(x = LL_ISOTOPES_final$Ages, y = LL_ISOTOPES_final$Carbon13, color = 'Laguna de la Leche'))+
  xlab("Age")+
  ylab("Carbon 13")+
  ggtitle("C13 Record from 3 Sites in Cuba")+
  scale_x_reverse()+
  theme(legend.title = element_blank())
plot(C13)




