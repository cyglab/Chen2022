rm(list=ls())   brary(lme4) 
library(lmerTest)  
data <- read.csv("Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data20220428-original\\LinearMixedModel\\lmmData.csv")
names(data) <-c("subject","UnifPC","UnifDIs","UnifDL","UnifPE","ConvPC","ConvDIs","ConvDL","ConvPE","KalmPC","KalmDIs","KalmDL","KalmPE","mP3")
mod1 <- lmer(mP3 ~ UnifPC + (1|subject) + (0 + UnifPC |subject), data=data, REML=F)
summary(mod1)
anova(mod1)
dataClass = predict(mod1)
write.csv(dataClass,file = "Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data20220428-original\\LinearMixedModel\\UnifPCPrec.csv", row.names = T)


mod1 <- lmer(mP3 ~ UnifDIs + (1|subject) + (0 + UnifDIs |subject), data=data, REML=F)
summary(mod1)
anova(mod1)
dataClass = predict(mod1)
write.csv(dataClass,file = "Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data20220428-original\\LinearMixedModel\\UnifDIsPrec.csv", row.names = T)    


mod1 <- lmer(mP3 ~ UnifDL + (1|subject) + (0 + UnifDL |subject), data=data, REML=F)
summary(mod1)
anova(mod1)
dataClass = predict(mod1)
write.csv(dataClass,file = "Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data20220428-original\\LinearMixedModel\\UnifDLPrec.csv", row.names = T)  

mod1 <- lmer(mP3 ~ UnifPE + (1|subject) + (0 + UnifPE |subject), data=data, REML=F)
summary(mod1)
anova(mod1)
dataClass = predict(mod1)
write.csv(dataClass,file = "Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data20220428-original\\LinearMixedModel\\UnifPEPrec.csv", row.names = T)  


mod1 <- lmer(mP3 ~ ConvPC + (1|subject) + (0 + ConvPC |subject), data=data, REML=F)
summary(mod1)
anova(mod1)
dataClass = predict(mod1)
write.csv(dataClass,file = "Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data20220428-original\\LinearMixedModel\\ConvPCPrec.csv", row.names = T)  


mod1 <- lmer(mP3 ~ ConvDIs + (1|subject) + (0 + ConvDIs |subject), data=data, REML=F)
summary(mod1)
anova(mod1)
dataClass = predict(mod1)
write.csv(dataClass,file = "Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data20220428-original\\LinearMixedModel\\ConvDIsPrec.csv", row.names = T)  


mod1 <- lmer(mP3 ~ ConvDL + (1|subject) + (0 + ConvDL |subject), data=data, REML=F)
summary(mod1)
anova(mod1)
dataClass = predict(mod1)
write.csv(dataClass,file = "Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data20220428-original\\LinearMixedModel\\ConvDLPrec.csv", row.names = T)  

mod1 <- lmer(mP3 ~ ConvPE + (1|subject) + (0 + ConvPE |subject), data=data, REML=F)
summary(mod1)
anova(mod1)
dataClass = predict(mod1)
write.csv(dataClass,file = "Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data20220428-original\\LinearMixedModel\\ConvPEPrec.csv", row.names = T) 

mod1 <- lmer(mP3 ~ KalmPC + (1|subject) + (0 + KalmPC |subject), data=data, REML=F)
summary(mod1)
anova(mod1)
dataClass = predict(mod1)
write.csv(dataClass,file = "Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data20220428-original\\LinearMixedModel\\KalmPCPrec.csv", row.names = T)  


mod1 <- lmer(mP3 ~ KalmDIs + (1|subject) + (0 + KalmDIs |subject), data=data, REML=F)
summary(mod1)
anova(mod1)
dataClass = predict(mod1)
write.csv(dataClass,file = "Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data20220428-original\\LinearMixedModel\\KalmDIsPrec.csv", row.names = T)  


mod1 <- lmer(mP3 ~ KalmDL + (1|subject) + (0 + KalmDL |subject), data=data, REML=F)
summary(mod1)
anova(mod1)
dataClass = predict(mod1)
write.csv(dataClass,file = "Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data20220428-original\\LinearMixedModel\\KalmDLPrec.csv", row.names = T)  

mod1 <- lmer(mP3 ~ KalmPE + (1|subject) + (0 + KalmPE |subject), data=data, REML=F)
summary(mod1)
anova(mod1)
dataClass = predict(mod1)
write.csv(dataClass,file = "Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data20220428-original\\LinearMixedModel\\KalmPEPrec.csv", row.names = T) 



           