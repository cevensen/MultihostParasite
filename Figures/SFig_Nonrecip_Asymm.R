library(ggplot2)
library(ggpubr)
cbPalette <- c("#999999", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
#Figure for raw data of asymmetric, nonreciprocal interactions
onwardtrans_recip_com<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
-0.0003	2.85	3.05	3.25	3.45
-0.0002	2.95	3.15	3.3	3.5
-0.0001	3.05	3.25	3.4	3.55
")


onwardrecip_com <- ggplot(data = onwardtrans_recip_com, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#0C689C") + 
  geom_point(aes(y = highmed), color = "#4199CA") +
  geom_point(aes(y = medlow), color = "#78C0E8") + 
  geom_point(aes(y = low), color = "#B2E3FE") +
  ggtitle("Case 3, PH Exploitee")+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(plot.title = element_text(size = 10))+
  scale_x_continuous(breaks=seq(-0.0003,-0.0001,0.0001))+
  labs(x = expression("Interaction r"["NPH" %->% "PH"])) + ylab("Maximum ES virulence")

onwardtrans_recip_mut<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
0.0001	3.6	3.65	3.75	3.85
0.0002	3.65	3.7	3.8	3.9
0.0003	3.7	3.75	3.85	3.9
")


onwardrecip_mut <- ggplot(data = onwardtrans_recip_mut, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#0C689C") + 
  geom_point(aes(y = highmed), color = "#4199CA") +
  geom_point(aes(y = medlow), color = "#78C0E8") + 
  geom_point(aes(y = low), color = "#B2E3FE") +
  ggtitle("Case 3, PH Exploiter")+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(plot.title = element_text(size = 10))+
  scale_x_continuous(breaks=seq(0.0001,0.0003,0.0001))+
  labs(x = expression("Interaction r"["NPH" %->% "PH"])) + ylab("Maximum ES virulence")


suscep_recip_com<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
-0.0003	4.2	4.2	4.2	4.2
-0.0002	4.2	4.2	4.2	4.2
-0.0001	4.2	4.2	4.2	4.2
")

susceprecip_com <- ggplot(data = suscep_recip_com, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#AB7703") + 
  geom_point(aes(y = highmed), color = "#D3A235") +
  geom_point(aes(y = medlow), color = "#E7BE63") + 
  geom_point(aes(y = low), color = "#F5D58E") +
  ggtitle("Case 1, PH Exploitee")+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(plot.title = element_text(size = 10))+
  scale_x_continuous(breaks=seq(-0.0003,-0.0001,0.0001))+
  labs(x = expression("Interaction r"["NPH" %->% "PH"])) + ylab("Maximum ES virulence")


suscep_recip_mut<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
0.0001	4.2	4.2	4.2	4.2
0.0002	4.2	4.2	4.2	4.2
0.0003	4.2	4.2	4.2	4.2
")

susceprecip_mut <- ggplot(data = suscep_recip_mut, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#AB7703") + 
  geom_point(aes(y = highmed), color = "#D3A235") +
  geom_point(aes(y = medlow), color = "#E7BE63") + 
  geom_point(aes(y = low), color = "#F5D58E") +
  ggtitle("Case 1, PH Exploiter")+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(plot.title = element_text(size = 10))+
  scale_x_continuous(breaks=seq(0.0001,0.0003,0.0001))+
  labs(x = expression("Interaction r"["NPH" %->% "PH"])) + ylab("Maximum ES virulence")

excessdeath_recip_com<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
-0.0003	4.6	4.52	4.46	4.4
-0.0002	4.66	4.58	4.5	4.44
-0.0001	4.7	4.6	4.54	4.48
")

excessdeathrecip_com <- ggplot(data = excessdeath_recip_com, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#7B0A49") + 
  geom_point(aes(y = highmed), color = "#BE3481") +
  geom_point(aes(y = medlow), color = "#E87BB8") + 
  geom_point(aes(y = low), color = "#FBB5DC") +
  ggtitle("Case 4, PH Exploitee")+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(plot.title = element_text(size = 10))+
  scale_x_continuous(breaks=seq(-0.0003,-0.0001,0.0001))+
  labs(x = expression("Interaction r"["NPH" %->% "PH"])) + ylab("Maximum ES virulence")

excessdeath_recip_mut<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
0.0001	5.02	4.88	4.76	4.66
0.0002	5.02	4.9	4.78	4.68
0.0003	5.04	4.9	4.78	4.68
")

excessdeathrecip_mut <- ggplot(data = excessdeath_recip_mut, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#7B0A49") + 
  geom_point(aes(y = highmed), color = "#BE3481") +
  geom_point(aes(y = medlow), color = "#E87BB8") + 
  geom_point(aes(y = low), color = "#FBB5DC") +
  ggtitle("Case 4, PH Exploiter")+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(plot.title = element_text(size = 10))+
  scale_x_continuous(breaks=seq(0.0001,0.0003,0.0001))+
  labs(x = expression("Interaction r"["NPH" %->% "PH"])) + ylab("Maximum ES virulence")

growth_recip_com<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
-0.0003	5.05	4.95	4.8	4.7
-0.0002	5	4.85	4.75	4.65
-0.0001	4.9	4.8	4.7	4.6

")

growthrecip_com <- ggplot(data = growth_recip_com, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#017D5B") + 
  geom_point(aes(y = highmed), color = "#20A984") +
  geom_point(aes(y = medlow), color = "#4ED8B3") + 
  geom_point(aes(y = low), color = "#B3EBDC") +
  ggtitle("Case 2, PH Exploitee")+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(plot.title = element_text(size = 10))+
  scale_x_continuous(breaks=seq(-0.0003,-0.0001,0.0001))+
  labs(x = expression("Interaction r"["NPH" %->% "PH"])) + ylab("Maximum ES virulence")

growth_recip_mut<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
0.0001	4.65	4.6	4.5	4.45
0.0002	4.6	4.55	4.5	4.45
0.0003	4.6	4.5	4.45	4.4
")

growthrecip_mut <- ggplot(data = growth_recip_mut, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#017D5B") + 
  geom_point(aes(y = highmed), color = "#20A984") +
  geom_point(aes(y = medlow), color = "#4ED8B3") + 
  geom_point(aes(y = low), color = "#B3EBDC") +
  ggtitle("Case 2, PH Exploiter")+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(plot.title = element_text(size = 10))+
  scale_x_continuous(breaks=seq(0.0001,0.0003,0.0001))+
  labs(x = expression("Interaction r"["NPH" %->% "PH"])) + ylab("Maximum ES virulence")


figure3<- ggarrange(susceprecip_com, susceprecip_mut, growthrecip_com, growthrecip_mut, onwardrecip_com, onwardrecip_mut, excessdeathrecip_com, excessdeathrecip_mut,
                    ncol = 4, nrow = 2)
figure3 <-annotate_figure(figure3, 
                          top = text_grob("Nonreciprocal Host-Host Interactions, Asymmetric", face = "bold", size = 14))
print(figure3)
ggsave(file = "SFig_Nonecip_Asymm.eps")   
