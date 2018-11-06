
library(shiny)

shinyUI(fluidPage(
  titlePanel("Developing Data Products Course Project"),
  sidebarLayout(
    sidebarPanel(
       h1("Home Loan Costs Calculator"),
       em("This calculator will determine the Down Payment, Monthly Payment, and Total cost of a home loan."),
       em("Simply use the sliders below to enter your home's purchase price, mortgage interest rate (APR), duration of loan, and the down pamyent percent you intend to put down at the time of purchase."),
       h2("-------------"),
       sliderInput("slider1","Purchase Price ($)",0, 1000000, 500000, step = 1000),
       sliderInput("slider2","Annual Percentage Rate for Loan (%)",min = 0, max=15, value = 5, step=.01),
       sliderInput("slider3","Length of Loan (Years)",0, 30, 15),
       sliderInput("slider4","Down Payment Percent (%)", min = 0, max = 100, value = 20, step=1),
       h2("-------------")
    ),
    mainPanel(
       h2("Down Payment amount in dollars"),
       textOutput("text1"),
       h2("Monthly Payment amount in dollars"),
       textOutput("text2"),
       h2("Total cost in dollars of mortgage over the life of the loan"),
       textOutput("text3"),
       h2("-------------"),
       em("This caclulator was built for the final project of the Developing Data Products course offered through Coursera."),
       h4("Author: Matt Bielik"),
       h4("November 5, 2018")
    )
  )
))  
  


