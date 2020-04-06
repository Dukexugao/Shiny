library(shiny)
library(data.table)
library(DT)
library(readxl)
library(writexl)
library(dplyr)
library(plotly)
library(tidyr)
library(geonames)
library(rlist)
library(reshape2)
library(tibble)
library(rpivotTable)
library(shinydashboard)

options(shiny.maxRequestSize = 70*1024^2)
options(geonamesUsername="raf")
options(geonamesHost="api.geonames.org")

geo <- read_excel("\\\\phont80025us\\Shares\\Sourcing_Leverage_Team\\Processes & Tools\\Alteryx\\BID_VALIDATION\\DC.xlsx", sheet = 1)
# aa <- read_excel("C:\\Local\\Xu Gao\\Rshiny\\bid-validation\\MotorOil.xlsx", sheet = 1)
# aa <- aa[!is.na(aa$Supplier), ]

bid_validation_server <- function(input, output, session) {
  source("server/file_upload_server.R", local = TRUE)
  source("server/missing_info_server.R", local = TRUE)
  source("server/outlier_server.R", local = TRUE)
  source("server/shipping_info_server.R", local = TRUE)
  source("server/capacity_server.R", local = TRUE)
  source("server/summary_server.R",local = TRUE)
}
