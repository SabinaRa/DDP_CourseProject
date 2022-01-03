#
# This is a simple Shiny application that uses open data about COVID-19 disease available 
# at https://www.ecdc.europa.eu/en/publications-data/download-data-hospital-and-icu-admission-rates-and-current-occupancy-covid-19
#


# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Hospital and ICU admission rates and current occupancy for COVID-19 in Europe (ECDC data)"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
          selectInput("country", "Select a country", unique(data$country), multiple = FALSE),
          selectInput("indicator", "Select an indicator", unique(data$indicator), multiple = FALSE)
          ),

        # Show a plot of the generated distribution
        mainPanel(
           plotlyOutput("plotCountry")
        )
    ),
    p("This Shiny application visualizes hospital and ICU admission rates and current occupancy for COVID-19 in Europe. To show plot, please, select country and available indicator. If data are not available the plot will not be provided."),
    tags$a(href="https://www.ecdc.europa.eu/en/publications-data/download-data-hospital-and-icu-admission-rates-and-current-occupancy-covid-19", "Data source")
    
    
    ))
