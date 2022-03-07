
here::i_am("R/make_barplot_suicidalthoughts.R")

#Dataset
finaldata = read.table("finaldata.txt", header = TRUE)
attach(finaldata)

#Barplot of Suicidal Thoughts
Suicidal_Thoughts=as.factor(Suicidal_Thoughts);
Suicidal_Thoughts=factor(finaldata$Suicidal_Thoughts, 
                         levels = c("Never","Rarely","Sometimes","Often","Very_Often"));

T=table(Suicidal_Thoughts)



png(here::here("figs", "barplot_suicidalthoughts.png"))
        barplot(T,
        col=topo.colors(6),
        main="How often do college students \n think about suicide in a given academic year?", 
        ylab="Number of Students",
        ylim=c(0,120)
)       
dev.off()