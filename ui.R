#
# This is the user-interface definition of unit converter app. It allows user choose
# from 3 types of unit conversion and an input value, with an outcome value 
# produced simultaneously in the result panel
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(pageWithSidebar(
      #Application Title
      headerPanel('Unit Converter'),
      
      sidebarPanel(
            radioButtons("unit", label = h3("Type of Conversion"),
                         choices = list("inch to cm" = 1, "lb to kg" = 2, "gal to L" = 3), 
                         selected = 1),
      numericInput('num',label = h3('From value'), 1)
                  ),
      mainPanel(
            h3('Conversion Result'),
            verbatimTextOutput('output')
      )
)     
)
      
  
      

