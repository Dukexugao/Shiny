library(plotly)
library(rpivotTable)
outlier_tab <- fluidPage(
  verticalLayout(  fluidRow(
    
    column(4, uiOutput(outputId = "item_select_ui")),
    column(4, uiOutput(outputId = "delivery_type_select_ui2"))
    
    ),
    plotlyOutput('plotOutlier'),
    br(),
    br(),
    h3("Below is summary for Price outlier"),
    h5("Please select the nornal price range by percentage based on average, above or below will be regarded as outliers"),
    sliderInput("costrange", " ",min = -200, 
                max = 200, value = c(-200,200)),
    # highchartOutput("hcontainer"),
    # br(),
    br(),
    DT::dataTableOutput("Outlier"),
    br(),
    br(),
    DT::dataTableOutput("price")
    
  )
)
