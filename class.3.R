
install.packages("tidyverse")

library(tidyverse)


dema_data<-read.csv("c:\\Users\\conal\\Desktop\\LearningR\\Dema Data.csv", header = TRUE)

dema_data$ExpGroup<-factor(dema_data$ExpGroup, levels = c(1,2), labels = c("Non-mother", "Mother"))

dema_data$Phase3split<-factor(dema_data$Phase3split, labels = c("Early-Follicular", "Ovulatory", "Late-luteal"), levels = c(1,2,3))

install.packages("psycho")
library(psycho)

dema_data[dema_data==-999]<-NA

dema_data[dema_data==999]<-NA


dema_data<-dema_data %>%
  mutate(zE2=standardize(E2_level)) %>% 
  mutate(zP=standardize(P_level)) %>% 
  mutate(zT=standardize(T_level))




descriptive_dema_data<-dema_data %>%
  group_by(ExpGroup, Phase3split)%>%
  select(E2_level, P_level, T_level) %>% 
  drop_na() %>% 
  summarise_all(funs(mean,sd))

library(wesanderson)

colours<-wes_palette("Darjeeling1", n=3)


ggplot(data = dema_data)+
  geom_violin(aes(x=ExpGroup, y=E2_level, colour=Phase3split))+
  geom_jitter(aes(x=ExpGroup, y=E2_level, colour=Phase3split), size=3, position=position_jitterdodge())+
  scale_color_manual(values=wes_palette("IsleofDogs3", n=3))

