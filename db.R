# Establish DB connection ----
library(pool)
library(rjson)
library(DBI)
library(odbc)
library(rjson)

"%+%" <- function(...) paste0(...)

DEFAULT_SERVER <- "orb10xserv.database.windows.net"
PORT <- 1433
USERNAME <- "orb10x_admin"

PASSWORD_FILE_NAME <- "password.json"
DB_PASSWORD_FILE_NAME <- "passwordDb.json"

# read config from local config file 
password_config <- fromJSON(file = PASSWORD_FILE_NAME) # fontawesome
passwordDb_config <- fromJSON(file = DB_PASSWORD_FILE_NAME) # SQL database connection on Azure

runningOnShinyApps <- function() {
  if (Sys.getenv('SHINY_PORT') == "") { 
    return(FALSE)  # this app IS NOT running on shinyapps.io
  } else {
    return(TRUE)  # this IS running on shinyapps.io
  }
}

# create function to get local odbc driver from machine
getLocalDriverODBC <- function() {
  # in instances where there are >1 drivers, only take most recent, defined by a decresing sort function
  return(sort(unique(odbc::odbcListDrivers()$name[grep('ODBC', odbc::odbcListDrivers()$name, ignore.case = F, perl = T)]), decreasing=T)[1])
} 

# connect to the database, use a different server string formatting depending on windows (local) or linux (shinyapps)
getServerStr <- function(server) {
  if (runningOnShinyApps()) {
    return(server %+% ";Port=" %+% as.character(PORT))
  } else  { # local
    return("tcp:" %+% server %+% "," %+% as.character(PORT))
  }
}

# connect to the database, use a different driver if the application is on shinyapps.io
getDriverStr <- function() {
  if (runningOnShinyApps()) {
    #return("FreeTDS;TDS_Version=7.0") # apparently this version doesn't support encryption? http://software.firstworks.com/2017/04/tlsssl-encryption-with-ms-sql-server.html
    return("FreeTDS;TDS_Version=7.2") # 7.1-7.4 supposedly do, 7.2 supports varchar max? 7.3 and 7.4 didn't work on shinyapps
  } else { # local
    return(getLocalDriverODBC())  # take ODBC driver name from machine, rather than hard coding it in as it can change dependign on version of MS SQL Server Mgmt Studio
  }
} 

formConnectionString <- function(database, server, username, password) {
  connectionString <- "Driver="   %+% getDriverStr() %+%  ";" %+%
    "Server="   %+% getServerStr(server) %+%  ";" %+%
    "Database=" %+% database   %+%  ";" %+%
    "Uid="      %+% username   %+%  ";" %+%
    "Pwd={"     %+% password   %+% "};" %+% # password stored in non-source-controlled file
    "Encrypt=yes;" %+%
    "TrustServerCertificate=no;" %+%
    "Connection Timeout=30;"
  return(connectionString)
}

# Get database pool.
getDbPool <- function(dbName = NA, serverName = NA) {
  if (is.na(dbName)) {
    stop("you must specify a database name")
  }
  if (is.na(serverName)) {
    serverName <- DEFAULT_SERVER
  }
  return(pool::dbPool(odbc::odbc(), .connection_string = formConnectionString(dbName, serverName, USERNAME, passwordDb_config$password)))
}
