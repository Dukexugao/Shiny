file_upload_tab <- wellPanel(
  id = "file_upload_panel",
  div(style="text-align:center",tags$h3("Upload Master Report")),
  fluidRow(
    column(width = 8, 
           fileInput(inputId = "input_file", 
                     label = "", 
                     multiple = FALSE,
                     accept = c(".xlsx"))),
    column(width = 3,
           actionButton(inputId = "validate_button", 
                        label = "Validate", 
                        icon("cog"))),
    tags$style(type='text/css', "#validate_button { width:100%; margin-top: 20px;}")
  )
)
