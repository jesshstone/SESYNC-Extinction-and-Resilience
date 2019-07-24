attach(LLAgeDepthModel)
print(LLAgeDepthModel)
library(Bchron)
LLout = Bchronology(ages=LLAgeDepthModel$ages,
                    ageSds=LLAgeDepthModel$agesds, 
                    calCurves=LLAgeDepthModel$calCurves,
                    positions=LLAgeDepthModel$posistion, 
                    positionThicknesses=LLAgeDepthModel$thickness,
                    ids=LLAgeDepthModel$id, 
                    predictPositions=seq(0,219,by=1))

summary(LLout)
summary(LLout, type = 'convergence')
summary(LLout, type = 'outliers')

plot(LLout,
     main="LL age depth model",
     xlab='Age (cal yrs BP)',
     ylab='Depth (cm)',
     las=1)

View(LLout)
LLout$theta

ages <- predict(LLout, LL_isotopes$depth)
ages2 <-colMeans(ages)

predict(LLout, LL_isotopes$depth)
ages <- predict(LLout, LL_isotopes$depth)
View(ages)
rowmeans (ages)
ages2 <- colMeans(ages)
