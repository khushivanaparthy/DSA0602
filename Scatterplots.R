#18

data <-mtcars[,c('wt','mpg')] 
plot(x = data$wt,y = data$mpg, xlab = "Weight", ylab = "Milage",
     xlim = c(2.5,5), ylim = c(15,30), main = "Weight v/sMilage")  

#19

library(ggplot2)   
ggplot(mtcars, aes(x = drat, y = mpg)) +geom_point()  

#20

library(ggplot2)  
ggplot(mtcars, aes(x = drat, y = mpg)) +geom_point(aes(color=factor(gear)))  

#21

library(ggplot2)  
ggplot(mtcars, aes(x = log(mpg), y = log(drat)))+geom_point(aes(color=factor(gear)))  


#22

library(ggplot2)  
ggplot(mtcars, aes(x = log(mpg), y = log(drat))) +geom_point(aes(color = factor(gear))) + stat_smooth(method = "lm",col = "#C42126",se = FALSE,linewidth = 1)  

#23

library(ggplot2)  
new_graph<-ggplot(mtcars, aes(x = log(mpg), y = log(drat))) +geom_point(aes(color = factor(gear))) +  
  stat_smooth(method = "lm",col = "#C42126",se = FALSE,size = 1)  
new_graph+labs(  title = "Scatterplot with more information")  

#24

library(ggplot2)  
new_graph<-ggplot(mtcars, aes(x = log(mpg), y = log(drat))) +geom_point(aes(color = factor(gear))) +  
  stat_smooth(method = "lm",col = "#C42126",se = FALSE,size = 1)
new_graph + labs(  title =  "Relation between Mile per hours and drat",  
  subtitle =  "Relationship break down by gear class",  
  caption = "Authors own computation"  
)  

#25

library(ggplot2)  
         new_graph<-ggplot(mtcars, aes(x = log(mpg), y = log(drat))) +geom_point(aes(color = factor(gear))) +  
          stat_smooth(method = "lm",col = "#C42126",se = FALSE,size = 1)  
        new_graph +labs(  
          x = "Drat definition",  
          y = "Mile per hours",  
          color = "Gear",  
          title = "Relation between Mile per hours and drat",  
          subtitle = "Relationship break down by gear class",  
          caption = "Authors own computation"  
        )  
        