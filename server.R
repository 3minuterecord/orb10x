shinyServer(function(input, output, session) {
  
  # Create a render of the flyer
  output$flyerImage <- renderImage({
    list(src="slides/flyer.png",
         contentType = 'image/png',
         class = "bigImagebox",
         alt = "Slide Thumbnail")
  }, deleteFile = FALSE,)

  output$slideImage01 <- renderImage({
    list(src="slides/slide_AIdivide.png",
         contentType = 'image/png',
         class = "slideImagebox",
         alt = "Slide Thumbnail")
  }, deleteFile = FALSE,)
  
  output$slideImage02 <- renderImage({
    list(src="slides/slide_Crisp.png",
         contentType = 'image/png',
         class = "slideImagebox",
         alt = "Slide Thumbnail")
  }, deleteFile = FALSE,)
  
  output$slideImage03 <- renderImage({
    list(src="slides/slide_Gain.png",
         contentType = 'image/png',
         class = "slideImagebox",
         alt = "Slide Thumbnail")
  }, deleteFile = FALSE,)
  
  output$slideImage04 <- renderImage({
    list(src="slides/slide_insight.png",
         contentType = 'image/png',
         class = "slideImagebox",
         alt = "Slide Thumbnail")
  }, deleteFile = FALSE,)
  
  output$slideImage05 <- renderImage({
    list(src="slides/slide_Study.png",
         contentType = 'image/png',
         class = "slideImagebox",
         alt = "Slide Thumbnail")
  }, deleteFile = FALSE,)
  
  output$slideImage06 <- renderImage({
    list(src="slides/slide_AI.png",
         contentType = 'image/png',
         class = "slideImagebox",
         alt = "Slide Thumbnail")
  }, deleteFile = FALSE,)
  
  output$slideImage07 <- renderImage({
    list(src="slides/slide_ANN.png",
         contentType = 'image/png',
         class = "slideImagebox",
         alt = "Slide Thumbnail")
  }, deleteFile = FALSE,)
  
  output$slideImage08 <- renderImage({
    list(src="slides/slide_Deep.png",
         contentType = 'image/png',
         class = "slideImagebox",
         alt = "Slide Thumbnail")
  }, deleteFile = FALSE,)
  
  output$slideImage09 <- renderImage({
    list(src="slides/slide_Domains.png",
         contentType = 'image/png',
         class = "slideImagebox",
         alt = "Slide Thumbnail")
  }, deleteFile = FALSE,)
  
  output$slideImage10 <- renderImage({
    list(src="slides/slide_Decision.png",
         contentType = 'image/png',
         class = "slideImagebox",
         alt = "Slide Thumbnail")
  }, deleteFile = FALSE,)
  
  output$slideImage11 <- renderImage({
    list(src="slides/slide_Thinking.png",
         contentType = 'image/png',
         class = "slideImagebox",
         alt = "Slide Thumbnail")
  }, deleteFile = FALSE,)
  
  output$slideImage12 <- renderImage({
    list(src="slides/slide_Auto.png",
         contentType = 'image/png',
         class = "slideImagebox",
         alt = "Slide Thumbnail")
  }, deleteFile = FALSE,)
  
  output$slideImage13 <- renderImage({
    list(src="slides/slide_Maturity.png",
         contentType = 'image/png',
         class = "slideImagebox",
         alt = "Slide Thumbnail")
  }, deleteFile = FALSE,)
  
  output$slideImage14 <- renderImage({
    list(src="slides/slide_Platform.png",
         contentType = 'image/png',
         class = "slideImagebox",
         alt = "Slide Thumbnail")
  }, deleteFile = FALSE,)
  
  output$slideImage15 <- renderImage({
    list(src="slides/slide_Interesting.png",
         contentType = 'image/png',
         class = "slideImagebox",
         alt = "Slide Thumbnail")
  }, deleteFile = FALSE,)
  
  output$slideImage16 <- renderImage({
    list(src="slides/slide_DA.png",
         contentType = 'image/png',
         class = "slideImagebox",
         alt = "Slide Thumbnail")
  }, deleteFile = FALSE,)
  
  output$slideImage17 <- renderImage({
    list(src="slides/slide_Color.png",
         contentType = 'image/png',
         class = "slideImagebox",
         alt = "Slide Thumbnail")
  }, deleteFile = FALSE,)
  
  output$slideImage18 <- renderImage({
    list(src="slides/slide_IDE.png",
         contentType = 'image/png',
         class = "slideImagebox",
         alt = "Slide Thumbnail")
  }, deleteFile = FALSE,)
  
  output$slideImage19 <- renderImage({
    list(src="slides/slide_DataToValue.png",
         contentType = 'image/png',
         class = "slideImagebox",
         alt = "Slide Thumbnail")
  }, deleteFile = FALSE,)
  
  output$slideImage21 <- renderImage({
    list(src="slides/slide_Open.png",
         contentType = 'image/png',
         class = "slideImagebox",
         alt = "Slide Thumbnail")
  }, deleteFile = FALSE,)
  
  output$slideImage22 <- renderImage({
    list(src="slides/slide_IA.png",
         contentType = 'image/png',
         class = "slideImagebox",
         alt = "Slide Thumbnail")
  }, deleteFile = FALSE,)
  
  output$slideImage23 <- renderImage({
    list(src="slides/slide_CodeExample.png",
         contentType = 'image/png',
         class = "slideImagebox",
         alt = "Slide Thumbnail")
  }, deleteFile = FALSE,)
  
  # Read in timeline data
  timelineData <- reactive({
    data <- read.csv("data/timelineData.csv", stringsAsFactors = FALSE)
    data$Date <- as.POSIXct(data$Date, format = "%d-%m-%Y", tz = "UTC")
    return(data)
  })
  
  # Timeline plot
  output$careerTimeline <- renderPlotly({
    req(timelineData())
    data <- timelineData()
    data$MilestoneFlag <- 1
    
    axisStart <- data$Date[1] - (150*60*60*24)
    axisEnder <- as.POSIXct(Sys.Date() + 150, tz = "UTC")
    
    mainMarkerColor <- '#282923' #'#787C64"
    suppMarkerColor <- '#EBCA48'
    highMarkerColor <- '#EBCA48'
    darkMarkerColor <- '#233845'
    
    markerSize <- 20
    textSize <- 10
    
    currentRole <- '<b>Head of Data Science<b>'
    carreerSpan <- round((as.POSIXct(Sys.Date(), tz = "UTC") - data$Date[1]) / 365.25, 1)
    
    plotly::plot_ly(
      data,
      height = 100
    ) %>% add_markers (
      name = "Milestones",
      x = ~Date,
      y = ~MilestoneFlag,
      type = "scatter",
      mode = "markers",
      symbol = ~MilestoneFlag, 
      symbols = 'square',
      marker = list(color = mainMarkerColor, size = markerSize, line = list(color = suppMarkerColor, width = 1)),
      hoverinfo = 'text',
      text = ~paste0('</br> ', format(Date, "%b-%Y"), ' </br> ', '<b>', Milestone, ' </b> ', ' </br>', Description, ' </br> ', Comments, ' ')
    ) %>% add_markers (
      name = "Today",
      x = Sys.time(),
      y = 1,
      type = "scatter",
      mode = "markers",
      symbol = ~1, 
      symbols = 'square',
      marker = list(color = highMarkerColor, size = markerSize, line = list(color = suppMarkerColor, width = 1))
    ) %>% add_trace (
      x = c(axisStart, axisEnder),
      y = 1,
      type = "scatter",
      mode = "lines",
      line = list(color = mainMarkerColor, width = 1)
    ) %>% add_text(
      x = axisStart,
      y = 1.013,
      text = as.character(data$Date[1]),
      textposition = 'bottom right',
      textfont = list(color = mainMarkerColor, size = textSize),
      type = 'scatter',
      mode = 'text'
    ) %>% add_text(
      x = axisStart,
      y = 1.018,
      text = "Graduated University, TUD/DIT (Dublin, Ireland)",
      textposition = 'bottom right',
      textfont = list(color = mainMarkerColor, size = textSize),
      type = 'scatter',
      mode = 'text' 
    ) %>% add_text(
      x = axisStart,
      y = 1.023,
      text = "<b>Start</b>",
      textposition = 'bottom right',
      textfont = list(color = darkMarkerColor, size = textSize),
      type = 'scatter',
      mode = 'text' 
    ) %>% add_text(
      x = axisEnder,
      y = 1.023,
      text = currentRole,
      textposition = 'bottom left',
      textfont = list(color = darkMarkerColor, size = textSize),
      type = 'scatter',
      mode = 'text'
    ) %>% add_text(
      x = axisEnder,
      y = 1.018,
      text = 'Wood (www.woodplc.com)',
      textposition = 'bottom left',
      textfont = list(color = mainMarkerColor, size = textSize),
      type = 'scatter',
      mode = 'text' 
    ) %>% add_text(
      x = axisEnder,
      y = 1.013,
      text = paste0('Experience ', carreerSpan, ' years'),
      textposition = 'bottom left',
      textfont = list(color = mainMarkerColor, size = textSize),
      type = 'scatter',
      mode = 'text'
    ) %>% layout(
      plot_bgcolor='#ECF0F5',
      paper_bgcolor='#ECF0F5',
      margin = list(l = 30, t = 5, b = 0, pad = 0),
      font = list(size = 10),
      xaxis = list(title = "", zeroline = FALSE, showline = FALSE, showticklabels = FALSE, showgrid = FALSE, range = c(axisStart, axisEnder)),
      yaxis = list(title = (""), zeroline = FALSE, showline = FALSE, showticklabels = FALSE, showgrid = FALSE),
      showlegend = FALSE
    ) 
  })
  
})