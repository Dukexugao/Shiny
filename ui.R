library(shinyWidgets)
library(shinydashboard)
source("ui/file_update_tab.R")
source("ui/missing_info_tab.R")
source("ui/outlier_tab.R")
source("ui/capacity_tab.R")
source("ui/summary_tab.R")
#Dashboard header carrying the title of the dashboard
header <- dashboardHeader(title = "Bid Validation")  

#Sidebar content of the dashboard
sidebar <- dashboardSidebar(
  sidebarMenu( id = "tabs",
    menuItem("Upload Report", tabName = "upload", icon = icon("upload")),
    menuItem("Missing Information", tabName = "digits", icon = icon("question")),
    menuItem("Capacity & CaseSpec", tabName = "case", icon = icon("cube")),
    menuItem("Cost Information", tabName = "cost", icon = icon("dollar-sign")),
    menuItem("Validation Summary", tabName = "summary", icon = icon("dashboard")),
    menuItem("Pivot Table", tabName = "pivottable", icon = icon("table")),
    menuItem("Ship Route", tabName = "ship", icon = icon("clock")),
    menuItem("Visit Coupa", icon = icon("send",lib='glyphicon'), 
             href = "https://walmart.cso.coupahost.com/negotiation/login")
  )
)

body <- dashboardBody(tabItems(
  tabItem(tabName = "upload",file_upload_tab),
  tabItem(tabName = "digits",missing_info_tab),
  tabItem(tabName = "case",capacity_tab),
  tabItem(tabName = "cost",outlier_tab),
  tabItem(tabName = "summary",summary_tab),
  tabItem(tabName = "pivottable",fluidPage(rpivotTableOutput("pivot"))),
  tabItem(tabName = "ship",fluidPage(plotlyOutput("plotShip")))
  )
)



# frow1 <- fluidRow(
#   valueBoxOutput("value1")
#   ,valueBoxOutput("value2")
#   ,valueBoxOutput("value3")
# )
# 
# frow2 <- fluidRow(
#   
#   box(
#     title = "Revenue per Account"
#     ,status = "primary"
#     ,solidHeader = TRUE 
#     ,collapsible = TRUE 
#     ,plotOutput("revenuebyPrd", height = "300px")
#   )
#   
#   ,box(
#     title = "Revenue per Product"
#     ,status = "primary"
#     ,solidHeader = TRUE 
#     ,collapsible = TRUE 
#     ,plotOutput("revenuebyRegion", height = "300px")
#   ) 
#   
# )




#completing the ui part with dashboardPage
bid_validation_ui <- dashboardPage(title = 'Bid Validation', header, sidebar, body, skin='red')

