###### DASHBOARDS IN R ###### 
###### Cliff Oduor, Msc ###### 
###### Senior Data scientist###### 
###### 14/11/2022 ###### 
############################## 
rm(list=ls())
setwd("C:/MY_PROJECTS/MODELS/Dashboard")
getwd()

library(shiny)
library(shinydashboard)

data("iris")
data1<-iris
summary(iris)
duplicated(iris)
names(data1)
table(data1$Species)
boxplot(Sepal.Length~Species,data=iris,main="test data",xlab="species",ylab="sepal length",col="steelblue",border="black")



ui<-dashboardPage(
  dashboardHeader(title="ML and statistical Modelling"),
  dashboardSidebar(),
  dashboardBody(
    box(plotOutput("correlation"),width=8)
  )
)

server<-function(input,output){
  output$correlation<-renderPlot({
    plot(data1$Sepal.Length,data1$Petal.Length)
     })
  
}

shinyApp(ui,server)
