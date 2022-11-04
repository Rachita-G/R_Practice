# Univariate plots
vector <- c(2,3,5,4,7,8,9,1,5,4)
hist(vector)
plot(vector) # scatter plot of index and vector values
lines(vector, vector**2)
plot(vector, vector**2)

# Basic plotting
x=c(1.3,6.5,6.6,1.1,3)
y=c(4.4,6.6,5.5,4.4,-1)
plot(x,y) # or plot(cbind(x,y))

# parameters are as follows:
# type-- plot coordinators by lines,points etc. default is "p"
# main,xlab,ylab-- plot title,x label and y label
# col-- color-- for plotting lines and points
# pch-- point character-- tells us which character to use for plotting individual points
# cex-- character expression-- controls the size of plotted point
# lty-- line type-- type of line-- dashed , dotted, or solid
# lwd-- line width-- thickness of the line plotted
# xlim,ylim-- xlimit and ylimit-- limits for x nd y axis range
plot(x,y) # default="p" for points
plot(x,y,"l")
plot(x,y,"b") #both p n l
plot(x,y,"b",main="plot",xlab="x",ylab="y")
plot(x,y,"b",main="plot",xlab="x",ylab="y",col="green")
plot(x,y,"b",main="plot",xlab="x",ylab="y",col="green",pch=12)
plot(x,y,"b",main="plot",xlab="x",ylab="y",col="green",pch=5,lty=8)
plot(x,y,"b",main="plot",xlab="x",ylab="y",col="green",pch=5,lty=8,cex=0.9)
plot(x,y,"b",main="plot",xlab="x",ylab="y",col="green",pch=5,lty=8,cex=0.9,lwd=2)
plot(x,y,"b",main="plot",xlab="x",ylab="y",col="green",pch=5,lty=8,cex=0.9,lwd=2,xlim=c(1,7))
plot(x,y,"b",main="plot",xlab="x",ylab="y",col="green",pch=5,lty=8,cex=0.9,lwd=2,xlim=c(1,7),ylim=c(1,7))

# adding points, lines and text to plot
# points-- add points
# lines,abline,segments-- adds lines
# text-- writes text 
# arrows-- adds arrows
# legend-- adds legend
x=1:11
y=c(-3,-4.5,8.8,9,10,33,5.8,-2,6,-10,17)
plot(x,y)
plot(x,y,type="n") #n type is empty plotting region
abline(h=c(1,20),col="red",lty=3,lwd=1)
#segments used when not to extend the line to the whole plot not abline is used.
segments(x0=c(4,8),x1=c(4,8),y0=c(0,0),y1=c(20,20),col="blue",lty=2,lwd=0.9) 
#x0 and x1 is same for from to to coordinates and yo and y1 are for from and den to.
points(y[y<0],col="blue")
points(x[x<4],col="green")
points(y[y>10],col="magenta")
lines(x,y,lty=2)
arrows(5,25,6,10) # from to to corrdinates for arrow
text(4,30,"sweet spot")
legend("topright",legend=c("range","bounded","slope"),
       col=c("red","blue","black"),lwd=c(2,2,2),lty=2)

# ggplot 2 package
install.packages("ggplot2")
library(ggplot2)
x=c(2.2,5.5,1.2,-5)
y=c(-4,6,8,2)
qplot(x,y) #quick plot

qplot(x,y,main="graph",xlab="x",ylab="y")
qplot(x,y)+geom_point()+geom_line()
qplot(x,y)+geom_point(col="darkblue",size=3,shape=4)+geom_line(col="blue",linetype=5)

# aethetic mapping with goems
ptype=rep(NA,length(x))
ptype
ptype[y>5]="one"
ptype
ptype[y>0&y<5]="medium"
ptype
ptype[x>0&x<5]="high"
ptype=factor(x=ptype)
ptype
qplot(x,y,color=ptype)

# points to note:
# geom_point-- add points
# geom_line-- add lines
# geom_hline-- add horizontal line
# geom_segment-- add lines segements
# mapping,aes- geom aesthetic mapping


head(diamonds)
colnames(diamonds)
qplot(carat,price,data=diamonds)
set.seed(190)

dsmall=diamonds[sample(nrow(diamonds),100),] #random sample of 100 diamonds
qplot(carat,price,data=dsmall)
qplot(carat,price,data=dsmall,color=color)
qplot(carat,price,data=dsmall,shape=cut)

# Alpha aesthetic is for transparecy ranging from 0 (completely transp) to 1 (opaque)
qplot(carat,price,data=dsmall,alpha=I(1/5))
qplot(carat,price,data=dsmall,alpha=I(1/10))

#qplot makes scatter. To produce line bar and other types, use geom
#geom point- plots points
#geom smooth- fits smoother to the data
#geom boxplot- box and whisker plot to summarise the set of points in data
#geom path and line for lines between data points
#geom histogram- draws histogram
#geom frepoly- frequency polygon
#geom density- density plot
#geom bar- bar chart

qplot(carat,price,data=dsmall,geom=c("point","smooth"))
#wiggliness is controlled by span
qplot(carat,price,data=dsmall,geom=c("point","smooth"),span=0.3)
qplot(carat,price,data=dsmall,geom=c("point","smooth"),span=1)

library(splines)
qplot(carat,price,data=dsmall,geom=c("point","smooth"),method="lm")

qplot(color,price/carat,data=diamonds,geom="jitter")
qplot(color,price/carat,data=dsmall,geom="jitter")
qplot(color,price/carat,data=dsmall,geom="boxplot")

qplot(carat,data=diamonds,geom="histogram",bins=20)      
qplot(carat,data=diamonds,geom="density")
qplot(carat,data=diamonds,geom="density",color=color)
qplot(carat,data=diamonds,geom='histogram',fill=color)

qplot(color,data=diamonds,geom="bar",ylab="count") 
qplot(color,data=diamonds,geom="bar",weight=carat,ylab="carat")

qplot(carat,price,data=dsmall,geom="line")

#continue with ch 3 of the book 
qplot(carat,price,data=dsmall,geom="line",ylab="price($)",xlab="weight(carat)",xlim=c(0.5,1.5))
