# Load libraries
library(shiny)

# 69 love songs colour palette
pal <- c("black", "#E00008", "#858B8E", "white")

description <- "
All courses delivered by Jason Payne, an experienced head of data science with practical experience of executing multiple AI & analytics projects for large multinational companies across a wide range of sectors, setting up a centre of excellence for data analytics in Ireland and guiding a series of internal digital transformation initiatives"

# SHINY UI
ui <- tagList(
  tags$head(tags$link(href="https://fonts.googleapis.com/css?family=Archivo+Black&display=swap")),
  navbarPage(
  inverse = TRUE, "Orb10x",
  
  # First Page - Intro        
  tabPanel(
    "Home", 
    includeCSS("www/custom.css"),
    fluidPage(
      #div(img(src="orb10x_black.svg"), style="margin-top: 10px; margin-left: 13px; margin-right: 15px; margin-bottom: 10px;"),
      div(imageOutput("flyerImage"), class = "flyer-box sliderPanel"),
      div(
        div(
          div("TRAINER DETAILS", class = "heading01"),
          div(img(src="jason_circle.png", height="80px"), class = "sliderPanel person-pic"),
          div(description, class = "sliderPanel description-text-box")
        ),
        br(),
        div("SAMPLE CONTENT", class = "heading01"),
        imageOutput("slideImage01", width = "100%", height = "290px", inline = TRUE),
        imageOutput("slideImage02", width = "100%", height = "290px", inline = TRUE),
        imageOutput("slideImage03", width = "100%", height = "290px", inline = TRUE),
        imageOutput("slideImage04", width = "100%", height = "290px", inline = TRUE),
        class = "sliderPanel",
        style = "width:1200px;"
      )
    )
  )
)
)

# SHINY SERVER
server <- function(input, output) {
  # Create a render of the flyer
  output$flyerImage <- renderImage({
    list(src="www/flyer.png",
         contentType = 'image/png',
         class = "bigImagebox",
         alt = "Orb10x Flyer")
  }, deleteFile = FALSE,)
  
  output$slideImage01 <- renderImage({
    list(src="www/slide_AI.png",
         contentType = 'image/png',
         class = "slideImagebox",
         alt = "Orb10x Flyer")
  }, deleteFile = FALSE,)
  
  output$slideImage02 <- renderImage({
    list(src="www/slide_DataToValue.png",
         contentType = 'image/png',
         class = "slideImagebox",
         alt = "Orb10x Flyer")
  }, deleteFile = FALSE,)
  
  output$slideImage03 <- renderImage({
    list(src="www/slide_IDE.png",
         contentType = 'image/png',
         class = "slideImagebox",
         alt = "Orb10x Flyer")
  }, deleteFile = FALSE,)
  
  output$slideImage04 <- renderImage({
    list(src="www/slide_CodeExample.png",
         contentType = 'image/png',
         class = "slideImagebox",
         alt = "Orb10x Flyer")
  }, deleteFile = FALSE,)
  
}



# Run the application 
shinyApp(ui = ui, server = server)

