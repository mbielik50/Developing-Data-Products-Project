
library(shiny)
shinyServer(function(input, output) {
        
        DownPayment <- reactive({
                down_pmt <- (input$slider1)*(input$slider4)/100
                sprintf("$%3.2f", down_pmt)
        })
        
        MonthlyPayment <- reactive({
                principal <- (input$slider1 *(1-input$slider4/100))
                pmt_numerator <- input$slider2/100*(1+input$slider2/100)^(input$slider3)
                pmt_denomenator <- (1+input$slider2/100)^(input$slider3)-1
                mth_pmt <-(principal * pmt_numerator)/(pmt_denomenator)/12
                sprintf("$%3.2f", mth_pmt)
        })
        
        TotalPayment <- reactive({
                down_pmt <- (input$slider1)*(input$slider4)/100
                principal <- (input$slider1 *(1-input$slider4/100))
                pmt_numerator <- input$slider2/100*(1+input$slider2/100)^(input$slider3)
                pmt_denomenator <- (1+input$slider2/100)^(input$slider3)-1
                mth_pmt <-(principal * pmt_numerator)/(pmt_denomenator)/12
                tot_pmt <- mth_pmt *(input$slider3)*12 + down_pmt
                sprintf("$%3.2f", tot_pmt)
        
        })
        
        output$text1 <- renderText({
                DownPayment()
        })
        
        output$text2 <- renderText({
                MonthlyPayment()
        })
        
        output$text3 <- renderText({
                TotalPayment()
        })
})
  
