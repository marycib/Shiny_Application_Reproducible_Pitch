

library(shiny)

library(tidyverse)
library(DT)

shinyServer(function(input, output) {
  
  output$RawData <- DT::renderDataTable(
    DT::datatable(
      iris
    )
  )
  
  
  
  
  
  output$Plot1 <- renderPlot({
    
    
    iris %>%
     filter(Species %in% input$Species)  %>% ggplot(aes(x = Sepal.Length, y = Sepal.Width))+
      geom_point(aes(color = Species))+               
      geom_smooth(aes(color = Species, fill = Species))+
      facet_wrap(~Species, ncol = 3, nrow = 1)+
      scale_color_manual(values = c("#00AFBB", "#E7B800", "#FC4E07"))+
      scale_fill_manual(values = c("#00AFBB", "#E7B800", "#FC4E07"))
    
    
    
    
  })
  
})



