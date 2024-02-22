library(ggplot2)
library(ggpubr)
#Figure for raw data of reciprocal, symmetric interactions
onwardtrans_recip<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
-0.0003	3.31	3.43	3.55	3.7
-0.0002	3.31	3.43	3.55	3.7
-0.0001	3.31	3.43	3.55	3.7
0	3.31	3.43	3.55	3.7
0.0001	3.31	3.43	3.55	3.7
0.0002	3.31	3.43	3.55	3.7
0.0003	3.31	3.43	3.55	3.7
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
-0.0003	5.04	4.9	4.77	4.64
-0.0002	4.95	4.82	4.69	4.59
-0.0001	4.88	4.77	4.66	4.58
0	4.85	4.74	4.65	4.56
0.0001	4.82	4.71	4.62	4.55
0.0002	4.8	4.7	4.61	4.53
0.0003	4.79	4.69	4.61	4.53
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
-0.0003	5	4.88	4.75	4.63
-0.0002	4.89	4.78	4.68	4.59
-0.0001	4.84	4.73	4.65	4.56
0	4.8	4.71	4.62	4.53
0.0001	4.77	4.68	4.61	4.52
0.0002	4.76	4.67	4.59	4.52
0.0003	4.74	4.67	4.58	4.52
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
                          top = text_grob("Reciprocal Host-Host Interactions", face = "bold", size = 14))
print(figure1)
ggsave(file = "SFig_Recip_Symm.eps")    