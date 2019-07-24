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
attach(LL_isotopes)
LL <- LL_isotopes
ggplot(LL,
       aes(x = depth, y = `Oxygen-18`))+
  geom_line()
ggplot(LL,
       aes(x = depth, y = `Carbon-13`))+
  geom_line()
plot(depth,`Carbon-13`,type="l",col="red")
plot(depth,`Oxygen-18`,type="l",col="blue")