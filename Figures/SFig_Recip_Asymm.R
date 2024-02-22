library(ggplot2)
library(ggpubr)
cbPalette <- c("#999999", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
#Figure for raw data of asymmetric, reciprocal interactions
onwardtrans_recip_com<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
-0.0003	3.13	3.28	3.43	3.61
-0.0002	3.31	3.43	3.55	3.7
-0.0001	3.43	3.52	3.64	3.76
")


onwardrecip_com <- ggplot(data = onwardtrans_recip_com, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#0C689C") + 
  geom_point(aes(y = highmed), color = "#4199CA") +
  geom_point(aes(y = medlow), color = "#78C0E8") + 
  geom_point(aes(y = low), color = "#B2E3FE") +
  ggtitle("Case 3, Competitors")+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(plot.title = element_text(size = 10))+
  scale_x_continuous(breaks=seq(-0.0003,-0.0001,0.0001))+
  labs(x = expression("Interaction r"["NPH" %->% "PH"])) + ylab("Maximum ES virulence")

onwardtrans_recip_mut<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
0.0001	3.22	3.37	3.52	3.67
0.0002	3.31	3.43	3.55	3.7
0.0003	3.34	3.46	3.61	3.73
")


onwardrecip_mut <- ggplot(data = onwardtrans_recip_mut, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#0C689C") + 
  geom_point(aes(y = highmed), color = "#4199CA") +
  geom_point(aes(y = medlow), color = "#78C0E8") + 
  geom_point(aes(y = low), color = "#B2E3FE") +
  ggtitle("Case 3, Mutualists")+
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
  ggtitle("Case 1, Competitors")+
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
  ggtitle("Case 1, Mutualists")+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(plot.title = element_text(size = 10))+
  scale_x_continuous(breaks=seq(0.0001,0.0003,0.0001))+
  labs(x = expression("Interaction r"["NPH" %->% "PH"])) + ylab("Maximum ES virulence")

excessdeath_recip_com<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
-0.0003	4.88	4.76	4.64	4.56
-0.0002	4.94	4.8	4.68	4.6
-0.0001	4.96	4.82	4.72	4.62
")

excessdeathrecip_com <- ggplot(data = excessdeath_recip_com, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#7B0A49") + 
  geom_point(aes(y = highmed), color = "#BE3481") +
  geom_point(aes(y = medlow), color = "#E87BB8") + 
  geom_point(aes(y = low), color = "#FBB5DC") +
  ggtitle("Case 4, Competitors")+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(plot.title = element_text(size = 10))+
  scale_x_continuous(breaks=seq(-0.0003,-0.0001,0.0001))+
  labs(x = expression("Interaction r"["NPH" %->% "PH"])) + ylab("Maximum ES virulence")

excessdeath_recip_mut<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
0.0001	4.76	4.68	4.58	4.52
0.0002	4.78	4.72	4.62	4.54
0.0003	4.82	4.72	4.64	4.54
")

excessdeathrecip_mut <- ggplot(data = excessdeath_recip_mut, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#7B0A49") + 
  geom_point(aes(y = highmed), color = "#BE3481") +
  geom_point(aes(y = medlow), color = "#E87BB8") + 
  geom_point(aes(y = low), color = "#FBB5DC") +
  ggtitle("Case 4, Mutualists")+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(plot.title = element_text(size = 10))+
  scale_x_continuous(breaks=seq(0.0001,0.0003,0.0001))+
  labs(x = expression("Interaction r"["NPH" %->% "PH"])) + ylab("Maximum ES virulence")

growth_recip_com<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
-0.0003	4.98	4.86	4.74	4.64
-0.0002	4.88	4.78	4.68	4.58
-0.0001	4.78	4.68	4.6	4.52

")

growthrecip_com <- ggplot(data = growth_recip_com, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#017D5B") + 
  geom_point(aes(y = highmed), color = "#20A984") +
  geom_point(aes(y = medlow), color = "#4ED8B3") + 
  geom_point(aes(y = low), color = "#B3EBDC") +
  ggtitle("Case 2, Competitors")+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(plot.title = element_text(size = 10))+
  scale_x_continuous(breaks=seq(-0.0003,-0.0001,0.0001))+
  labs(x = expression("Interaction r"["NPH" %->% "PH"])) + ylab("Maximum ES virulence")

growth_recip_mut<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
0.0001	4.8	4.7	4.62	4.56
0.0002	4.74	4.68	4.6	4.52
0.0003	4.7	4.64	4.56	4.5
")

growthrecip_mut <- ggplot(data = growth_recip_mut, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#017D5B") + 
  geom_point(aes(y = highmed), color = "#20A984") +
  geom_point(aes(y = medlow), color = "#4ED8B3") + 
  geom_point(aes(y = low), color = "#B3EBDC") +
  ggtitle("Case 2, Mutualists")+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(plot.title = element_text(size = 10))+
  scale_x_continuous(breaks=seq(0.0001,0.0003,0.0001))+
  labs(x = expression("Interaction r"["NPH" %->% "PH"])) + ylab("Maximum ES virulence")


figure3<- ggarrange(susceprecip_com, susceprecip_mut, growthrecip_com, growthrecip_mut, onwardrecip_com, onwardrecip_mut, excessdeathrecip_com, excessdeathrecip_mut,
                    ncol = 4, nrow = 2)
figure3 <-annotate_figure(figure3, 
                          top = text_grob("Reciprocal Host-Host Interactions, Asymmetric", face = "bold", size = 14))
print(figure3)
ggsave(file = "SFig_Recip_Asymm.eps")   
