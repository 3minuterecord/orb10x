library(shiny)
library(shinydashboard)
library(plotly)
library(DT)
library(shinyjs) # for disabling buttons
library(shinycssloaders) # for loading spinners
library(shinyWidgets) # for toggle switch
library(shinyalert)
library(httr)
library(rjson)
library(stringr)
library(bsplus)
library(shinyBS)

PASSWORD_FILE_NAME <- "password.json"

# read config from local config file 
password_config <- fromJSON(file = PASSWORD_FILE_NAME)