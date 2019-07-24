attach(fensterer_CM)
mydata <- fensterer_CM
mydata <- mutate(mydata, group = factor(group), community = factor(community))
library(ggplot2)

## Santo Tomas (fensterer_CM)
ggplot(mydata,
       aes(x = `age[ka]`, y = d18O))+
  geom_line()
ggplot(mydata,
       aes(x = `age[ka]`, y = d13C))+
  geom_line()
plot(`age[ka]`,d13C,type="l",col="red")
plot(`age[ka]`,d18O,type="l",col="blue")

## Dos Anas (fensterer_CG)
attach(fensterer_CG)
DosAnas <- fensterer_CG
ggplot(DosAnas,
       aes(x = `age [ka b2k]`, y = d18O))+
  geom_line()
ggplot(DosAnas,
       aes(x = `age [ka b2k]`, y = d13C))+
  geom_line()
plot(`age [ka b2k]`,d13C,type="l",col="red")
plot(`age [ka b2k]`,d18O,type="l",col="blue")

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
