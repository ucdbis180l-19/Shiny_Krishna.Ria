#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

#  Using traits Plant height, Seed length, Seed width, Seed volume, Seed surface area, Protein content, Amylose content



library(shiny)
library(ggplot2)
library(tidyverse)

# Import Rice Data Set to apply user interface code.

Rice.data <- read_csv("/home/ubuntu/Assignments/Shiny_Krishna.Ria/ShinyLab/RiceDiversity.44K.MSU6.Phenotypes.csv")

# Define server logic required to draw a scatter plot.
shinyServer(function(input, output) {
  
  # Expression that generates a scatterplot. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a scatter plot
  #  3) There is a default setting.

  output$scatterPlot <- renderPlot({
    
    # set up the plot so that each selected trait from radiobuttons creates the desired plot.
    
    ggplot(data = Rice.data,
                 #Use aes_string below so that input$trait is interpreted
                 #correctly.
                 mapping =  aes_string(x=input$traits1, y=input$traits2,color=input$traits3)) + geom_point()
  })
})
