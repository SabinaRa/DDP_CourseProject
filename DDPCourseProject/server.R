

shinyServer(function(input, output, session) {

  dataCountry <- reactive({
    data %>% dplyr::filter(country == input$country) %>% dplyr::filter(indicator == input$indicator)

      
  })
  

    
  output$plotCountry <- renderPlotly({
    
    validate(
      need( nrow(dataCountry()) > 0, "Data insufficient for plot")
    )
    
    plot_ly(dataCountry(), x = ~as.POSIXct(date, format = "%Y-%m-%d"), y = ~value, type="bar")%>%
      layout(xaxis = list(title = 'Date'), yaxis = list(title = 'Number of patients or new \nadmissions per 100k population'))  
})

})
  