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

ui<-dashboardPage(
  dashboardHeader(),
  dashboardSidebar(),
  dashboardBody()
)

server<-function(input,output){
  
}

shinyApp(ui,server)
