attach(fensterer_CM)
DosAnasCM <- fensterer_CM
mydata <- mutate(mydata, group = factor(group), community = factor(community))
library(ggplot2)

## Santo Tomas (fensterer_CM)
ggplot(DosAnasCM,
       aes(x = DosAnasCM$age, y = d18O))+
  geom_line()
ggplot(DosAnasCM,
       aes(x = DosAnasCM$age, y = d13C))+
  geom_line()
plot(`age[ka]`,d13C,type="l",col="red")
plot(`age[ka]`,d18O,type="l",col="blue")

## Dos Anas (fensterer_CG)
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


##correcting the ages
DosAnasCM$age <- DosAnasCM$`age[ka]` * 1000
DosAnasCG$age_b2k <- DosAnasCG$`age [ka b2k]`*1000 





## layering the plots (oxygen18)

ggplot(DosAnasCG,
       aes(x = `age [ka b2k]`, y = d18O))+
  geom_line()

ggplot(DosAnasCM,
       aes(x = `age[ka]`, y = d18O))+
  geom_line()




