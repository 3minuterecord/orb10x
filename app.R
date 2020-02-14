# Load libraries
library(shiny)

# 69 love songs colour palette
pal <- c("black", "#E00008", "#858B8E", "white")



# SHINY UI
ui <- navbarPage(
  inverse = TRUE, "Orb10x",
  # First Page - Intro        
  tabPanel(
    "Home", includeCSS("www/custom.css"),
    fluidPage(div(img(src="orb10x_black.svg"), style="margin-top: 10px; margin-left: 13px; margin-right: 15px; margin-bottom: 10px;"),
              br(), br())
  )
)
# SHINY SERVER
server <- function(input, output) {
  
}

# Run the application 
shinyApp(ui = ui, server = server)

