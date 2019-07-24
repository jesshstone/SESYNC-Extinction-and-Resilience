attach(fensterer_CM)
SantoTomasCM <- fensterer_CM
mydata <- mutate(mydata, group = factor(group), community = factor(community))
library(ggplot2)

## Santo Tomas (fensterer_CM)
ggplot(SantoTomasCM,
       aes(x = SantoTomasCM$`age[ka]`, y = d18O))+
  geom_line()
ggplot(SantoTomasCM,
       aes(x = SantoTomasCM$`age[ka]`, y = d13C))+
  geom_line()


##need to fix these maybe...
plot(`age[ka]`,d13C,type="l",col="red")
plot(`age[ka]`,d18O,type="l",col="blue")

## Dos Anas (fensterer_Cp)
attach(Fensterer_CP)
DosAnasCP <- Fensterer_CP
ggplot(DosAnasCP,
       aes(x = DosAnasCP$`cal yr BP (age before 1950)`, y = d18O))+
  geom_line()
ggplot(DosAnasCP,
       aes(x = DosAnasCP$`cal yr BP (age before 1950)`, y = d13C))+
  geom_line()


## Laguna de la Leche
## attach the NEW LL isotopes file from google drive! 
attach(LL_ISOTOPES_final)
LL <- LL_ISOTOPES_final
ggplot(LL,
       aes(x = LL_ISOTOPES_final$Ages, y = `Oxygen18`))+
  geom_line()
ggplot(LL,
       aes(x = LL_ISOTOPES_final$Ages, y = `Carbon13`))+
  geom_line()
plot(LL_ISOTOPES_final$Ages,`Carbon13`,type="l",col="red")
plot(LL_ISOTOPES_final$Ages,`Oxygen18`,type="l",col="blue")


##correcting the ages of Santo Tomas CM
SantoTomasCM$`age[ka]` <- SantoTomasCM$`age[ka]` * 1000


## layering the plots (oxygen18)
ggplot(SantoTomasCM, aes(x = SantoTomasCM$`age[ka]`, y = SantoTomasCM$d18O))+ geom_line(aes(color = 'blue'))+
  geom_line(data = DosAnasCP, aes(x = DosAnasCP$`cal yr BP (age before 1950)`, y = DosAnasCP$d18O, color = 'red'))+
  geom_line(data = LL_ISOTOPES_final, aes(x = LL_ISOTOPES_final$Ages, y = LL_ISOTOPES_final$Oxygen18, color = 'green'))

## layering the plots (carbon13)
ggplot(SantoTomasCM, aes(x = SantoTomasCM$`age[ka]`, y = SantoTomasCM$d13C))+ geom_line(aes(color = 'blue'))+
  geom_line(data = DosAnasCP, aes(x = DosAnasCP$`cal yr BP (age before 1950)`, y = DosAnasCP$d13C, color = 'red'))+
  geom_line(data = LL_ISOTOPES_final, aes(x = LL_ISOTOPES_final$Ages, y = LL_ISOTOPES_final$Carbon13, color = 'green'))


