library(ggplot2)
library(ggpubr)

onwardtrans_nonrecip<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
-0.0003	0.7	0.75	0.8	0.85
-0.0002	0.7375	0.7875	0.825	0.875
-0.0001	0.7875	0.825	0.8625	0.9
0	0.825	0.85	0.8875	0.925
0.0001	0.8625	0.8875	0.925	0.95
0.0002	0.9125	0.925	0.95	0.975
0.0003	0.9625	0.975	0.9875	1
")

cbPalette <- c("#999999", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

onwardnonrecip <- ggplot(data = onwardtrans_nonrecip, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#0C689C") + 
  geom_point(aes(y = highmed), color = "#4199CA") +
  geom_point(aes(y = medlow), color = "#78C0E8") + 
  geom_point(aes(y = low), color = "#B2E3FE") +
  ggtitle("Case 3")+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))+
  labs(x = expression("Interaction r"["NPH" %->% "PH"])) + ylab("Maximum ES virulence")


suscep_nonrecip<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
-0.0003	1	1	1	1
-0.0002	1	1	1	1
-0.0001	1	1	1	1
0	1	1	1	1
0.0001	1	1	1	1
0.0002	1	1	1	1
0.0003	1	1	1	1
")

suscepnonrecip <- ggplot(data = suscep_nonrecip, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#AB7703") + 
  geom_point(aes(y = highmed), color = "#D3A235") +
  geom_point(aes(y = medlow), color = "#E7BE63") + 
  geom_point(aes(y = low), color = "#F5D58E") +
  ggtitle("Case 1")+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))+
  labs(x = expression("Interaction r"["NPH" %->% "PH"])) + ylab("Maximum ES virulence")

excessdeath_nonrecip<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
-0.0003	0.900990099	0.891089109	0.881188119	0.871287129
-0.0002	0.920792079	0.910891089	0.891089109	0.881188119
-0.0001	0.940594059	0.920792079	0.910891089	0.891089109
0	0.96039604	0.940594059	0.920792079	0.900990099
0.0001	0.98019802	0.95049505	0.930693069	0.910891089
0.0002	0.99009901	0.97029703	0.940594059	0.920792079
0.0003	1	0.98019802	0.95049505	0.930693069
")

excessdeathnonrecip <- ggplot(data = excessdeath_nonrecip, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#7B0A49") + 
  geom_point(aes(y = highmed), color = "#BE3481") +
  geom_point(aes(y = medlow), color = "#E87BB8") + 
  geom_point(aes(y = low), color = "#FBB5DC") +
  ggtitle("Case 4")+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))+
  labs(x = expression("Interaction r"["NPH" %->% "PH"])) + ylab("Maximum ES virulence")

growth_nonrecip<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
-0.0003	1	0.98019802	0.96039604	0.930693069
-0.0002	0.99009901	0.96039604	0.940594059	0.920792079
-0.0001	0.97029703	0.95049505	0.930693069	0.910891089
0	0.95049505	0.930693069	0.910891089	0.900990099
0.0001	0.930693069	0.910891089	0.900990099	0.891089109
0.0002	0.910891089	0.900990099	0.891089109	0.881188119
0.0003	0.891089109	0.881188119	0.871287129	0.861386139
")

growthnonrecip <- ggplot(data = growth_nonrecip, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#017D5B") + 
  geom_point(aes(y = highmed), color = "#20A984") +
  geom_point(aes(y = medlow), color = "#4ED8B3") + 
  geom_point(aes(y = low), color = "#B3EBDC") +
  ggtitle("Case 2")+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))+
  labs(x = expression("Interaction r"["NPH" %->% "PH"])) + ylab("Maximum ES virulence")


figure2 <- ggarrange(suscepnonrecip, growthnonrecip, onwardnonrecip, excessdeathnonrecip,
                     ncol = 2, nrow = 2)
figure2 <-annotate_figure(figure2, 
                          top = text_grob("Non-Reciprocal Host-Host Interactions", face = "bold", size = 14))
print(figure2)
ggsave(file = "TPfig2.eps")    