library(Lahman)
library(tidyverse)

RevereCareer <- Batting %>%  
  filter(playerID == "reverbe01") %>%  
  mutate(AVG = H/AB,
         OBP = (H + BB + HBP)/(AB + BB + HBP + SF),
        singles = H - (X2B + X3B + HR),
                 SLG = (singles + X2B * 2 + X3B * 3 + HR *4)/ AB)  

ggplot(RevereCareer, aes(x = yearID,
                         y = AVG,
                         color = AVG)) +
  geom_line()

ggplot(RevereCareer, aes(x = yearID,
                         y = OBP,
                         color = OBP)) +
  geom_line()

ggplot(RevereCareer, aes(x = yearID,
                         y = SLG,
                         color = SLG)) +
  geom_line()

ggplot(RevereCareer, aes(x = yearID,
                         y = SB,
                         color = SB)) +
  geom_line()

