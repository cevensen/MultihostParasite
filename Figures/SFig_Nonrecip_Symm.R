library(ggplot2)
library(ggpubr)
#Figure for raw data of nonreciprocal interactions
onwardtrans_recip<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
-0.0003	2.8	3	3.2	3.4
-0.0002	2.95	3.15	3.3	3.5
-0.0001	3.15	3.3	3.45	3.6
0	3.3	3.4	3.55	3.7
0.0001	3.45	3.55	3.7	3.8
0.0002	3.65	3.7	3.8	3.9
0.0003	3.85	3.9	3.95	4
")

cbPalette <- c("#999999", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

onwardrecip <- ggplot(data = onwardtrans_recip, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#0C689C") + 
  geom_point(aes(y = highmed), color = "#4199CA") +
  geom_point(aes(y = medlow), color = "#78C0E8") + 
  geom_point(aes(y = low), color = "#B2E3FE") +
  ggtitle("Case 3")+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))+
  labs(x = expression("Interaction r"["ij"])) + ylab("Maximum ES virulence")


suscep_recip<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
-0.0003	4.2	4.2	4.2	4.2
-0.0002	4.2	4.2	4.2	4.2
-0.0001	4.2	4.2	4.2	4.2
0	4.2	4.2	4.2	4.2
0.0001	4.2	4.2	4.2	4.2
0.0002	4.2	4.2	4.2	4.2
0.0003	4.2	4.2	4.2	4.2
")

susceprecip <- ggplot(data = suscep_recip, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#AB7703") + 
  geom_point(aes(y = highmed), color = "#D3A235") +
  geom_point(aes(y = medlow), color = "#E7BE63") + 
  geom_point(aes(y = low), color = "#F5D58E") +
  ggtitle("Case 1")+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))+
  labs(x = expression("Interaction r"["ij"])) + ylab("Maximum ES virulence")

excessdeath_recip<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
-0.0003	4.55	4.5	4.45	4.4
-0.0002	4.65	4.6	4.5	4.45
-0.0001	4.75	4.65	4.6	4.5
0	4.85	4.75	4.65	4.55
0.0001	4.95	4.8	4.7	4.6
0.0002	5	4.9	4.75	4.65
0.0003	5.05	4.95	4.8	4.7
")

excessdeathrecip <- ggplot(data = excessdeath_recip, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#7B0A49") + 
  geom_point(aes(y = highmed), color = "#BE3481") +
  geom_point(aes(y = medlow), color = "#E87BB8") + 
  geom_point(aes(y = low), color = "#FBB5DC") +
  ggtitle("Case 4")+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))+
  labs(x = expression("Interaction r"["ij"])) + ylab("Maximum ES virulence")

growth_recip<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
-0.0003	5.05	4.95	4.85	4.7
-0.0002	5	4.85	4.75	4.65
-0.0001	4.9	4.8	4.7	4.6
0	4.8	4.7	4.6	4.55
0.0001	4.7	4.6	4.55	4.5
0.0002	4.6	4.55	4.5	4.45
0.0003	4.5	4.45	4.4	4.35
")

growthrecip <- ggplot(data = growth_recip, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#017D5B") + 
  geom_point(aes(y = highmed), color = "#20A984") +
  geom_point(aes(y = medlow), color = "#4ED8B3") + 
  geom_point(aes(y = low), color = "#B3EBDC") +
  ggtitle("Case 2")+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))+
  labs(x = expression("Interaction r"["ij"])) + ylab("Maximum ES virulence")



figure1 <- ggarrange(susceprecip, growthrecip, onwardrecip, excessdeathrecip,
                     ncol = 2, nrow = 2)
figure1 <-annotate_figure(figure1, 
                          top = text_grob("Nonreciprocal Host-Host Interactions", face = "bold", size = 14))
print(figure1)
ggsave(file = "SFig_Nonrecip_Symm.eps")    
