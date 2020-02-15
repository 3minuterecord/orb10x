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
    fluidPage(
      #div(img(src="orb10x_black.svg"), style="margin-top: 10px; margin-left: 13px; margin-right: 15px; margin-bottom: 10px;"),
      div(imageOutput("flyerImage"), class = "sliderPanel"),
      div(img(src="jason_circle.png", height="150px"), class = "sliderPanel nudge-right"),
              br(), br()
      )
  )
)
# SHINY SERVER
server <- function(input, output) {
  # Create a render of the field area layout image
  output$flyerImage <- renderImage({
    list(src="www/flyer.png",
         contentType = 'image/png',
         class = "bigImagebox",
         alt = "Orb10x Flyer")
  }, deleteFile = FALSE,)
} 

# Run the application 
shinyApp(ui = ui, server = server)

