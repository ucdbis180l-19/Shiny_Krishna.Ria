#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#


library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage( #create the overall page
  

  titlePanel("RICE Data"),
  
  # Some helpful information
  helpText("This application creates a scatterplot to show the relationship between",
           "three traits chosen.  Please use the radio box below to choose a trait",
           "for plotting"),
  
  # Sidebar with a radio box to input which trait will be plotted
  sidebarLayout(
    sidebarPanel(
      radioButtons("traits1", #the input variable that the value will go into
                   "Choose your first trait to display:",
                   c("Plant height",
                     "Seed length",
                     "Seed width",
                     "Seed volume",
                     "Seed surface area",
                     "Protein content",
                     "Amylose content"),
      radioButtons("traits2", #the input variable that the value will go into
                  "Choose your second trait to display:",
                  c("Plant height",
                    "Seed length",
                    "Seed width",
                    "Seed volume",
                    "Seed surface area",
                    "Protein content",
                    "Amylose content"),
      radioButtons("traits3", #the input variable that the value will go into
                   "Choose your second trait to display:",
                   c("Plant height",
                   "Seed length",
                   "Seed width",
                   "Seed volume",
                   "Seed surface area",
                   "Protein content",
                   "Amylose content")
      ))),
    
    # Show a plot of the generated distribution
    mainPanel(plotOutput("scatterPlot")
    )
  )
)))