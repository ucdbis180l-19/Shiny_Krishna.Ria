#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

# Plant height, Seed length, Seed width, Seed volume, Seed surface area, Protein content, Amylose content



library(shiny)
library(ggplot2)
library(tidyverse)
Rice.data <- read_csv("/home/ubuntu/Assignments/Shiny_Krishna.Ria/ShinyLab/RiceDiversity.44K.MSU6.Phenotypes.csv")

# Define server logic required to draw a boxplot
shinyServer(function(input, output) {
  
  # Expression that generates a scatterplot. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot

  output$scatterPlot <- renderPlot({
    
    # set up the plot
    ggplot(data = Rice.data,
                 #Use aes_string below so that input$trait is interpreted
                 #correctly.  The other variables need to be quoted
                 mapping =  aes_string(x=input$traits1, y=input$traits2,fill=input$traits3)) + geom_point()
  })
})
