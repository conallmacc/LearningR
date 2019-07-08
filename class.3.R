
install.packages("tidyverse")
install.packages("cowplot")



library(tidyverse)
library(cowplot)


dema_data<-read.csv("~/Desktop/LearningR/LearningR/Dema Data.csv", header = TRUE)

dema_data<-read.csv("c:\\Users\\conal\\Desktop\\LearningR\\Dema Data.csv", header = TRUE)

dema_data$ExpGroup<-factor(dema_data$ExpGroup, levels = c(1,2), labels = c("Non-mother", "Mother"))

dema_data$Phase3split<-factor(dema_data$Phase3split, labels = c("Early-Follicular", "Ovulatory", "Late-luteal"), levels = c(1,2,3))



dema_data[dema_data==-999]<-NA

dema_data[dema_data==999]<-NA


dema_data<-dema_data %>%
  mutate(zE2=standardize(E2_level)) %>% 
  mutate(zP=standardize(P_level)) %>% 
  mutate(zT=standardize(T_level))




dema_data_for_regression %>%
  group_by(ExpGroup, Phase3split)%>%
  select(E2_centered, P_centered, T_centered) %>% 
  drop_na() %>% 
  summarise_all(funs(mean,sd))

install.packages("wesanderson")

library(wesanderson)

colours<-wes_palette("Darjeeling1", n=3)


E2<-ggplot(data = dema_data)+
  geom_violin(aes(x=ExpGroup, y=E2_level, colour=Phase3split))+
  geom_jitter(aes(x=ExpGroup, y=E2_level, colour=Phase3split), size=3, position=position_jitterdodge())+
  scale_color_manual(values=colours)+
  ylab("Level (pg)")+
  theme(panel.background = element_blank())+
  theme(axis.line = element_line(colour = "black"))+
  labs(colour = "Day of Cycle")+ggtitle("E2")+theme(plot.title = element_text(hjust = 0.5))
E2
P<-ggplot(data = dema_data)+
  geom_violin(aes(x=ExpGroup, y=P_level, colour=Phase3split))+
  geom_jitter(aes(x=ExpGroup, y=P_level, colour=Phase3split), size=3, position=position_jitterdodge())+
  scale_color_manual(values=colours)+
  ylab("Level (pg)")+
  theme(panel.background = element_blank())+
  theme(axis.line = element_line(colour = "black"))+
  labs(colour = "Day of Cycle")+ggtitle("P")+theme(plot.title = element_text(hjust = 0.5))

Testos<-ggplot(data = dema_data)+
  geom_violin(aes(x=ExpGroup, y=T_level, colour=Phase3split))+
  geom_jitter(aes(x=ExpGroup, y=T_level, colour=Phase3split), size=3, position=position_jitterdodge())+
  scale_color_manual(values=colours)+
  ylab("Level (pg)")+
  theme(panel.background = element_blank())+
  theme(axis.line = element_line(colour = "black"))+
  labs(colour = "Day of Cycle")+ggtitle("Testosterone")+theme(plot.title = element_text(hjust = 0.5))


Testos

legend<-get_legend(E2)
plot_grid(E2+theme(legend.position = "none"), P+theme(legend.position = "none"),Testos+theme(legend.position = "none"),legend, rel_widths = c(.46,.46,.46,.08), nrow=1)


t.test(data=dema_data, dema_data$E2_level~dema_data$ExpGroup)




t1<-t.test(E2_level~ExpGroup, data=dema_data, var.equal=TRUE)

t1

install.packages("car")
library(car)

leveneTest(E2_level~ExpGroup, data=dema_data)

install.packages("afex", dependencies = TRUE)

library(afex)
library(emmeans)

E2<-aov_4(data = dema_data, formula = E2_level~Phase3split+(1|ID))
emm_E2<-emmeans(E2, ~Phase3split)
emm_E2

contrast(emm_E2, method = "pairwise", adjust = "holm")

E2_factorial<-aov_4(data=dema_data, formula = E2_level~Phase3split*ExpGroup+(1|ID))
E2_factorial

emm_E2<-emmeans(E2_factorial, ~ExpGroup*Phase3split)
emm_E2
emm_E2<-emmeans(E2_factorial, ~Phase3split|ExpGroup)
emm_E2


comparisons<-list("MomEF vs MomOv" = c(0,1,0,-1,0,0), "Mom Vs Nonmom" = c(1,-1,1,-1,1,-1), "OvMom Vs NovMom"=c(0,.5,0,-1,0,.5))
contrast(emm_E2, comparisons, adjust = "none")


####interaction regression



dema_data_for_regression <- dema_data %>% 
  mutate(E2_centered= scale(E2_level, scale = FALSE)) %>% 
  mutate(P_centered= scale(P_level, scale=FALSE)) %>% 
  mutate(T_centered= scale(T_level, scale = FALSE)) %>% 
  mutate(E2xP= E2_centered*P_centered)

dema_data_for_regression$InitialStrat<-factor(dema_data_for_regression$InitialStrat, levels=c(1,2), labels=c("Response", "Spatial"))
dema_data_for_regression$E2_centered<-dema_data_for_regression$E2_centered[,1]
dema_data_for_regression$P_centered<-dema_data_for_regression$P_centered[,1]
dema_data_for_regression$T_centered<-dema_data_for_regression$T_centered[,1]
dema_data_for_regression$E2xP<-dema_data_for_regression$E2xP[,1]


reg1<-lm(formula = VMTotalErrors~E2_centered*P_centered*ExpGroup+IQ, data = dema_data_for_regression)
summary(reg1)

library(sjplot)

plot_model(reg1, type = "int", mdrt.values = "meansd")

reg2<-glm(formula =InitialStrat~E2_level*P_level*ExpGroup, data = dema_data_for_regression, family = binomial(link = "logit"))
summary(reg1)

library(afex)
