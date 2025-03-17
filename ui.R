# ui.R
library(shiny)

ui <- fluidPage(
  titlePanel("Stock Data and Nifty 50 Comparison"),
  sidebarLayout(
    sidebarPanel(
      textInput("stock", "Enter Stock Symbol (e.g., RELIANCE.NS):", value = "RELIANCE.NS"),
      dateRangeInput("dates", "Select Date Range:",
                     start = Sys.Date() - 365,
                     end = Sys.Date()),
      actionButton("fetch", "Fetch Data")
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Stock Data Table", DTOutput("stock_table")),
        tabPanel("Stock Price Plot", plotOutput("stock_plot")),
        tabPanel("Comparison Plot", plotOutput("comparison_plot"))
      )
    )
  )
)
