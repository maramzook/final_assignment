## this is the server code

library(shiny)
ageDetails <- function(tavalod) tavalod * 1
shinyServer(
  function(input, output) {
    output$years <- renderPrint({input$tavalod})
    output$months <- renderPrint({ageDetails(input$tavalod*12)})
    output$days <- renderPrint({ageDetails(input$tavalod*365)})
  }
)