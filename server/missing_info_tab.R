# 
# missing_info_tab <- fluidPage(
# 
#   
#   # Create a new Row in the UI for selectInputs
#   fluidRow(
#     
#     column(4, uiOutput(outputId = "supplier_select_ui")
#     ),
#     
#     column(4, uiOutput(outputId = "delivery_type_select_ui")
#     ),
#     
#     column(4, selectInput("missing_type","Type",c("All","Missing 9 Digits","Missing Capacity", "Missing Case Spec"))
#     )
#     # ,
#     # 
#     # column(1,div(style = "height:25px;"), downloadButton("downloadData", "Download")
#     # )
#     
#     
#   ),
#   
#   # Create a new row for the table.
#   DT::dataTableOutput("supplier_missing_info_table")
# )

missing_info_tab <- fluidPage(
  fluidRow(
    valueBoxOutput("value1")
    ,valueBoxOutput("value2")
    ,valueBoxOutput("value3")
  ),
  fluidRow(
    tabsetPanel(
      tabPanel("Missing 9 Digits",
               fluidRow(br(),
                        h4("-   Below is summary regarding suppliers who didn't fill in 9 digits"),
                        column(
                          width = 10, offset = 0.5,
                          #tags$h3("Filter data with selectize group"),
                          panel(
                            selectizeGroupUI(
                              id = "missinggroupselect1",
                              params = list(
                                var_one = list(inputId = "Supplier", title = "Select Supplier", placeholder = 'select'),
                                var_two = list(inputId = "Ship.Point", title = "Select Ship Point", placeholder = 'select')
                              )
                            ), status = "primary" #, div(style = "height:10px")
                          ),
                          DT::dataTableOutput("missing_digits")))),
      
      tabPanel("Missing Case Spec", 
               fluidRow(br(),
                        h4("-   Below is summary regarding suppliers who didn't fill in case spec"),
                 column(
                   width = 10, offset = 0.5,
                   #tags$h3("Filter data with selectize group"),
                   panel(
                     selectizeGroupUI(
                       id = "missinggroupselect2",
                       params = list(
                         var_one = list(inputId = "Supplier", title = "Select Supplier", placeholder = 'select'),
                         var_three = list(inputId = "Item.Description", title = "Select Item", placeholder = 'select')
                       )
                     ), status = "primary"
                   ),
                   DT::dataTableOutput("missing_case")))),
      
      tabPanel("Missing Capacity", 
               fluidRow(br(),
                        h4("-   Below is summary regarding suppliers who didn't fill in Capacity"),
        column(
          width = 10, offset = 0.5,
          #tags$h3("Filter data with selectize group"),
          panel(
            selectizeGroupUI(
              id = "missinggroupselect3",
              params = list(
                var_one = list(inputId = "Supplier", title = "Select Supplier", placeholder = 'select'),
                var_three = list(inputId = "Item.Description", title = "Select Item", placeholder = 'select')
                
              )
            ), status = "primary"
          ),
          DT::dataTableOutput("missing_capacity"))))
    )
  )
)
