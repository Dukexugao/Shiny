
source('ui.R')
source('server.R')

app <- shinyApp(
  ui = bid_validation_ui, 
  server = bid_validation_server
)
