library(ggplot2)
library(ggpubr)
cbPalette <- c("#999999", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

onwardtrans_recip_com<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
-0.0003	0.832446809	0.872340426	0.912234043	0.960106383
-0.0002	0.880319149	0.912234043	0.944148936	0.984042553
-0.0001	0.912234043	0.936170213	0.968085106	1
")


onwardrecip_com <- ggplot(data = onwardtrans_recip_com, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#0C689C") + 
  geom_point(aes(y = highmed), color = "#4199CA") +
  geom_point(aes(y = medlow), color = "#78C0E8") + 
  geom_point(aes(y = low), color = "#B2E3FE") +
  ggtitle("Case 3, Competitors")+
  theme_bw()+
  ylim(0.83,1)+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(plot.title = element_text(size = 10))+
  scale_x_continuous(breaks=seq(-0.0003,-0.0001,0.0001))+
  labs(x = expression("Interaction r"["NPH" %->% "PH"])) + ylab("Maximum ES virulence")

onwardtrans_recip_mut<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
0.0001	0.856382979	0.896276596	0.936170213	0.97606383
0.0002	0.880319149	0.912234043	0.944148936	0.984042553
0.0003	0.888297872	0.920212766	0.960106383	0.992021277
")


onwardrecip_mut <- ggplot(data = onwardtrans_recip_mut, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#0C689C") + 
  geom_point(aes(y = highmed), color = "#4199CA") +
  geom_point(aes(y = medlow), color = "#78C0E8") + 
  geom_point(aes(y = low), color = "#B2E3FE") +
  ggtitle("Case 3, Mutualists")+
  theme_bw()+
  ylim(0.83,1)+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(plot.title = element_text(size = 10))+
  scale_x_continuous(breaks=seq(0.0001,0.0003,0.0001))+
  labs(x = expression("Interaction r"["NPH" %->% "PH"])) + ylab("Maximum ES virulence")


suscep_recip_com<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
-0.0003	1	1	1	1
-0.0002	1	1	1	1
-0.0001	1	1	1	1
")

susceprecip_com <- ggplot(data = suscep_recip_com, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#AB7703") + 
  geom_point(aes(y = highmed), color = "#D3A235") +
  geom_point(aes(y = medlow), color = "#E7BE63") + 
  geom_point(aes(y = low), color = "#F5D58E") +
  ggtitle("Case 1, Competitors")+
  theme_bw()+
  ylim(0.9,1)+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(plot.title = element_text(size = 10))+
  scale_x_continuous(breaks=seq(-0.0003,-0.0001,0.0001))+
  labs(x = expression("Interaction r"["NPH" %->% "PH"])) + ylab("Maximum ES virulence")


suscep_recip_mut<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
0.0001	1	1	1	1
0.0002	1	1	1	1
0.0003	1	1	1	1
")

susceprecip_mut <- ggplot(data = suscep_recip_mut, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#AB7703") + 
  geom_point(aes(y = highmed), color = "#D3A235") +
  geom_point(aes(y = medlow), color = "#E7BE63") + 
  geom_point(aes(y = low), color = "#F5D58E") +
  ggtitle("Case 1, Mutualists")+
  theme_bw()+
  ylim(0.9,1)+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(plot.title = element_text(size = 10))+
  scale_x_continuous(breaks=seq(0.0001,0.0003,0.0001))+
  labs(x = expression("Interaction r"["NPH" %->% "PH"])) + ylab("Maximum ES virulence")

excessdeath_recip_com<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
-0.0003	0.983870968	0.959677419	0.935483871	0.919354839
-0.0002	0.995967742	0.967741935	0.943548387	0.927419355
-0.0001	1	0.971774194	0.951612903	0.931451613
")

excessdeathrecip_com <- ggplot(data = excessdeath_recip_com, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#7B0A49") + 
  geom_point(aes(y = highmed), color = "#BE3481") +
  geom_point(aes(y = medlow), color = "#E87BB8") + 
  geom_point(aes(y = low), color = "#FBB5DC") +
  ggtitle("Case 4, Competitors")+
  theme_bw()+
  ylim(0.9,1)+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(plot.title = element_text(size = 10))+
  scale_x_continuous(breaks=seq(-0.0003,-0.0001,0.0001))+
  labs(x = expression("Interaction r"["NPH" %->% "PH"])) + ylab("Maximum ES virulence")

excessdeath_recip_mut<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
0.0001	0.959677419	0.943548387	0.923387097	0.911290323
0.0002	0.963709677	0.951612903	0.931451613	0.915322581
0.0003	0.971774194	0.951612903	0.935483871	0.915322581
")

excessdeathrecip_mut <- ggplot(data = excessdeath_recip_mut, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#7B0A49") + 
  geom_point(aes(y = highmed), color = "#BE3481") +
  geom_point(aes(y = medlow), color = "#E87BB8") + 
  geom_point(aes(y = low), color = "#FBB5DC") +
  ggtitle("Case 4, Mutualists")+
  theme_bw()+
  ylim(0.9,1)+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(plot.title = element_text(size = 10))+
  scale_x_continuous(breaks=seq(0.0001,0.0003,0.0001))+
  labs(x = expression("Interaction r"["NPH" %->% "PH"])) + ylab("Maximum ES virulence")

growth_recip_com<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
-0.0003	1	0.975903614	0.951807229	0.931726908
-0.0002	0.979919679	0.959839357	0.939759036	0.919678715
-0.0001	0.959839357	0.939759036	0.923694779	0.907630522

")

growthrecip_com <- ggplot(data = growth_recip_com, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#017D5B") + 
  geom_point(aes(y = highmed), color = "#20A984") +
  geom_point(aes(y = medlow), color = "#4ED8B3") + 
  geom_point(aes(y = low), color = "#B3EBDC") +
  ggtitle("Case 2, Competitors")+
  theme_bw()+
  ylim(0.9,1)+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(plot.title = element_text(size = 10))+
  scale_x_continuous(breaks=seq(-0.0003,-0.0001,0.0001))+
  labs(x = expression("Interaction r"["NPH" %->% "PH"])) + ylab("Maximum ES virulence")

growth_recip_mut<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
0.0001	0.963855422	0.9437751	0.927710843	0.915662651
0.0002	0.951807229	0.939759036	0.923694779	0.907630522
0.0003	0.9437751	0.931726908	0.915662651	0.903614458
")

growthrecip_mut <- ggplot(data = growth_recip_mut, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#017D5B") + 
  geom_point(aes(y = highmed), color = "#20A984") +
  geom_point(aes(y = medlow), color = "#4ED8B3") + 
  geom_point(aes(y = low), color = "#B3EBDC") +
  ggtitle("Case 2, Mutualists")+
  theme_bw()+
  ylim(0.9,1)+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(plot.title = element_text(size = 10))+
  scale_x_continuous(breaks=seq(0.0001,0.0003,0.0001))+
  labs(x = expression("Interaction r"["NPH" %->% "PH"])) + ylab("Maximum ES virulence")


figure3<- ggarrange(susceprecip_com, susceprecip_mut, growthrecip_com, growthrecip_mut, onwardrecip_com, onwardrecip_mut, excessdeathrecip_com, excessdeathrecip_mut,
                     ncol = 4, nrow = 2)
figure3 <-annotate_figure(figure3, 
                          top = text_grob("Reciprocal Host-Host Interactions, Asymmetric", face = "bold", size = 14))
print(figure3)

