Ratio<-read.csv("c:\\Users\\conal\\Desktop\\Data\\CPaP OT\\OT_dudsremoved_Ratio.csv", header = TRUE)
library(tidyverse)
library(TOSTER)

Ratio_descript<-Ratio %>% 
  group_by(Group, Trials) %>%
  select(Group, Trials, Ratio_Ejac, Ratio_Solicit, Ratio_Intro) %>%
  summarise_all(funs(mean, sd))

data.frame(Ratio_descript)
Ratio_descript

#OT 1 trial Ejac
TOSTone.raw(Ratio_descript$Ratio_Ejac_mean[1], mu=0.5, sd=Ratio_descript$Ratio_Ejac_sd[1], n=9, low_eqbound = -0.001, high_eqbound = 0.001, alpha = .1)

#OT5 Trial Ejac
TOSTone.raw(Ratio_descript$Ratio_Ejac_mean[3], mu=0.5, sd=Ratio_descript$Ratio_Ejac_sd[3], n=12, low_eqbound = -0.001, high_eqbound = 0.001, alpha = .1)
#OT10 Trial Ejac
TOSTone.raw(Ratio_descript$Ratio_Ejac_mean[2], mu=0.5, sd=Ratio_descript$Ratio_Ejac_sd[2], n=10, low_eqbound = -0.001, high_eqbound = 0.001, alpha = .1)
#Sal 1 trial ejac
#sal 1 trial ejac
TOSTone.raw(Ratio_descript$Ratio_Ejac_mean[4], mu=0.5, sd=Ratio_descript$Ratio_Ejac_sd[4], n=9, low_eqbound = -0.001, high_eqbound = 0.001, alpha = .1)

#Sal 5 trial ejac
TOSTone.raw(Ratio_descript$Ratio_Ejac_mean[6], mu=0.5, sd=Ratio_descript$Ratio_Ejac_sd[6], n=12, low_eqbound = -0.001, high_eqbound = 0.001, alpha = .1)
#Sal 10 trial ejac
TOSTone.raw(Ratio_descript$Ratio_Ejac_mean[5], mu=0.5, sd=Ratio_descript$Ratio_Ejac_sd[5], n=7, low_eqbound = -0.001, high_eqbound = 0.001, alpha = .1)


#OT 1 trial soli
TOSTone.raw(Ratio_descript$Ratio_Solicit_mean[1], mu=0.5, sd=Ratio_descript$Ratio_Solicit_sd[1], n=9, low_eqbound = -0.001, high_eqbound = 0.001, alpha = .1)

#OT 5 trial soli
TOSTone.raw(Ratio_descript$Ratio_Solicit_mean[3], mu=0.5, sd=Ratio_descript$Ratio_Solicit_sd[3], n=12, low_eqbound = -0.001, high_eqbound = 0.001, alpha = .1)
#OT 10 trial soli
TOSTone.raw(Ratio_descript$Ratio_Solicit_mean[2], mu=0.5, sd=Ratio_descript$Ratio_Solicit_sd[2], n=10, low_eqbound = -0.001, high_eqbound = 0.001, alpha = .1)

#SAL 1 trial soli
TOSTone.raw(Ratio_descript$Ratio_Solicit_mean[4], mu=0.5, sd=Ratio_descript$Ratio_Solicit_sd[4], n=9, low_eqbound = -0.001, high_eqbound = 0.001, alpha = .1)

#sal 5 trial solo
TOSTone.raw(Ratio_descript$Ratio_Solicit_mean[6], mu=0.5, sd=Ratio_descript$Ratio_Solicit_sd[6], n=12, low_eqbound = -0.001, high_eqbound = 0.001, alpha = .1)

#Sal 10 trial soli
TOSTone.raw(Ratio_descript$Ratio_Solicit_mean[5], mu=0.5, sd=Ratio_descript$Ratio_Solicit_sd[5], n=7, low_eqbound = -0.001, high_eqbound = 0.001, alpha = .1)

#ot 1 trial int
TOSTone.raw(Ratio_descript$Ratio_Intro_mean[1], mu=0.5, sd=Ratio_descript$Ratio_Intro_sd[1], n=9, low_eqbound = -0.001, high_eqbound = 0.001, alpha = .1)


# ot 5 trial int
TOSTone.raw(Ratio_descript$Ratio_Intro_mean[3], mu=0.5, sd=Ratio_descript$Ratio_Intro_sd[3], n=12, low_eqbound = -0.001, high_eqbound = 0.001, alpha = .1)
#ot 10trial int
TOSTone.raw(Ratio_descript$Ratio_Intro_mean[2], mu=0.5, sd=Ratio_descript$Ratio_Intro_sd[2], n=10, low_eqbound = -0.001, high_eqbound = 0.001, alpha = .1)

#sal 1 trial int
TOSTone.raw(Ratio_descript$Ratio_Intro_mean[4], mu=0.5, sd=Ratio_descript$Ratio_Intro_sd[4], n=9, low_eqbound = -0.001, high_eqbound = 0.001, alpha = .1)


#sal 5 trial int
TOSTone.raw(Ratio_descript$Ratio_Intro_mean[6], mu=0.5, sd=Ratio_descript$Ratio_Intro_sd[6], n=12, low_eqbound = -0.001, high_eqbound = 0.001, alpha = .1)

#sal 10 trial int
TOSTone.raw(Ratio_descript$Ratio_Intro_mean[5], mu=0.5, sd=Ratio_descript$Ratio_Intro_sd[5], n=7, low_eqbound = -0.001, high_eqbound = 0.001, alpha = .1)

