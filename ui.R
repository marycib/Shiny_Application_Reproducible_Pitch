
library(shiny)
library(tidyverse)
library(DT)


shinyUI(fluidPage(
    
    
    titlePanel("Course Project: Shiny Application and Reproducible Pitch"),
    
    sidebarLayout(
        sidebarPanel(
            h1("Iris")
            
           
        ),
    
    

    tabsetPanel(tabPanel("Data",
                         
                        
                         
                         fluidRow(column(DT::dataTableOutput("RawData")
                                         ,width = 12))
                ),
                tabPanel("Graph", 
                         sidebarLayout( sidebarPanel(checkboxInput("aplicarlogX", "apply logarithm to x"),
                                                     
                                                     checkboxInput("aplicarlogY", "apply logarithm to y"),
                                                     
                                                     
                                                     checkboxGroupInput("Species", "Select Specie",
                                                                        choices = unique(iris$Species),
                                                                        selected = unique(iris$Species)
                                                     )),
                                        
                                        mainPanel(
                                            plotOutput("Plot1")
                                        )        ))
                
                
                
                
                
                
                
                
    ))
))