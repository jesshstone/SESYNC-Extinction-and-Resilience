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