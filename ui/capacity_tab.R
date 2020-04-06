
capacity_tab <- fluidPage(
    fluidRow(
    valueBoxOutput("value4")
    ,valueBoxOutput("value5")
    ,valueBoxOutput("value6")),
      fluidRow(
        tabsetPanel(
          tabPanel("Capacity < Demand (by Item)",
                   fluidRow(br(),
                            h4("-   Below is summary"),
                     column(
                       width = 10, offset = 0.5,
                       #tags$h3("Filter data with selectize group"),
                       panel(
                         selectizeGroupUI(
                           id = "groupselect1",
                           params = list(
                             var_one = list(inputId = "Supplier", title = "Select Supplier", placeholder = 'select'),
                             var_two = list(inputId = "Item.Description", title = "Select Item", placeholder = 'select')                           )
                         ), status = "primary" #, div(style = "height:10px")
                       ),
                       DT::dataTableOutput("item")))),
          
          tabPanel("Capacity < Demand (by Item by Ship Point)", 
                   fluidRow(br(),
                            h4("-   Below is summary  "),
                     column(
                       width = 10, offset = 0.5,
                       #tags$h3("Filter data with selectize group"),
                       panel(
                         selectizeGroupUI(
                           id = "groupselect2",
                           params = list(
                             var_one = list(inputId = "Supplier", title = "Select Supplier", placeholder = 'select'),
                             var_two = list(inputId = "Item.Description", title = "Select Item", placeholder = 'select')                           
                           )
                         ), status = "primary"
                       ),
                       DT::dataTableOutput("ship")))),
          
          tabPanel("Case Spec Outliers", 
                  fluidRow(br(),
                  h4("-  Below is summary  "),
            column(
              width = 10, offset = 0.5,
              #tags$h3("Filter data with selectize group"),
              panel(
                selectizeGroupUI(
                  id = "groupselect3",
                  params = list(
                    var_one = list(inputId = "Supplier", title = "Select Supplier", placeholder = 'select'),
                    var_two = list(inputId = "Item.Description", title = "Select Item", placeholder = 'select')
                    
                  )
                ), status = "primary"
              ),
              DT::dataTableOutput("caseoutlier"))))
          )
    )
  )
