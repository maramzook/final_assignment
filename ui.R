## this is the UI part for shiny app

library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("Estimate Number of Months/Days in Your Age"),
    sidebarPanel(
      numericInput('tavalod', 'Your Age', 30, min = 1, max = 120, step = 0.5
      ),
      submitButton('Calculate The Age Parts!')
    ),
    mainPanel(
      h3('Your Age Has The Following Details:'),
      h4('Age in Year'),
      verbatimTextOutput("years"),
      h4('Age in Months'),
      verbatimTextOutput("months"),
      h4('Age in Days'),
      verbatimTextOutput("days")
    )
  )
)

