library(ggplot2)
library(ggpubr)

onwardtrans_recip<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
-0.0003	0.894594595	0.927027027	0.959459459	1
-0.0002	0.894594595	0.927027027	0.959459459	1
-0.0001	0.894594595	0.927027027	0.959459459	1
0	0.894594595	0.927027027	0.959459459	1
0.0001	0.894594595	0.927027027	0.959459459	1
0.0002	0.894594595	0.927027027	0.959459459	1
0.0003	0.894594595	0.927027027	0.959459459	1
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
-0.0003	1	1	1	1
-0.0002	1	1	1	1
-0.0001	1	1	1	1
0	1	1	1	1
0.0001	1	1	1	1
0.0002	1	1	1	1
0.0003	1	1	1	1
")

susceprecip <- ggplot(data = suscep_recip, aes(x = n)) +
  scale_colour_manual(values=cbPalette)+
  geom_point(aes(y = high), color = "#AB7703") + 
  geom_point(aes(y = highmed), color = "#D3A235") +
  geom_point(aes(y = medlow), color = "#E7BE63") + 
  geom_point(aes(y = low), color = "#F5D58E") +
  ggtitle("Case 1")+
  ylim(0.9,1)+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))+
  labs(x = expression("Interaction r"["ij"])) + ylab("Maximum ES virulence")

excessdeath_recip<- read.table(header = TRUE, text = "
 n      high	highmed  medlow low
-0.0003	1	0.972222222	0.946428571	0.920634921
-0.0002	0.982142857	0.956349206	0.930555556	0.910714286
-0.0001	0.968253968	0.946428571	0.924603175	0.908730159
0	0.962301587	0.94047619	0.922619048	0.904761905
0.0001	0.956349206	0.93452381	0.916666667	0.902777778
0.0002	0.952380952	0.932539683	0.91468254	0.898809524
0.0003	0.950396825	0.930555556	0.91468254	0.898809524
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
-0.0003	1	0.976	0.95	0.926
-0.0002	0.978	0.956	0.936	0.918
-0.0001	0.968	0.946	0.93	0.912
0	0.96	0.942	0.924	0.906
0.0001	0.954	0.936	0.922	0.904
0.0002	0.952	0.934	0.918	0.904
0.0003	0.948	0.934	0.916	0.904
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
ggsave(file = "TPfig1.eps")    
