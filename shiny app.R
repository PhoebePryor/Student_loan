# shiny interactive app

library(shiny)
library(dplyr)
library(DT)
library(ggplot2)
library(shinydashboard)
library(plotly)

ui <- navbarPage("Student loan repayment",
                 tabPanel("About", fluidPage(
                   
                   titlePanel("Hello Shiny!"),
                   
                   sidebarLayout(
                     
                     sidebarPanel(
                
                     ),
                     mainPanel(
                       plotOutput()
                     )))),
                 tabPanel("calculator", fluidPage(
                   titlePanel("second")
                 ))
)




  
 

server <- function(input, output){
  
}

shinyApp(ui = ui, server = server)
