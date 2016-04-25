#
# This is the server logic of the unit converter App. 
#It takes the type of conversion and starting value as parameter and a numeric value
# and calculate the corresponding outcome value.
# 


library(shiny)

# unit converter function
unitCvt<-function (unit, num){
      if(unit==1){
            result <- num*2.54
      }
      else if (unit ==2){
            result <-num*0.453592
      }
      else{
            result<-num * 3.78541
      }
      print (result)
}

shinyServer(function(input, output) {
      
      output$output<-renderPrint({unitCvt(input$unit, input$num)})
      
})
