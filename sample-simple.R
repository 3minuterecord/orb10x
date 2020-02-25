runApp(
  list(ui = fluidPage(
    uiOutput("tab")
  ),
  server = function(input, output, session){
    url <- a("Google Homepage", href="https://www.google.com/")
    output$tab <- renderUI({
      tagList("URL link:", url)
    })
  })
)