library(shinydashboard)

penPicture <- "I'm currently Head of Data Science for Wood and Analytics Manager for Wood Ireland.  I have a Bachelor of Science degree and Diploma in Structural Engineering from Technology University Dublin. I have over 20 years experience in delivery of engineering, technology and data projects.  In the last 5 years, I have specialized in data science, managing Wood's centre of excellence for data analytics (located in Ireland) and delivering a wide range of AI & analytics projects across multiple industries and business functions."

header <- dashboardHeader(title = "www.ORB10X.com", titleWidth = 220)

sidebar <- dashboardSidebar(disable = TRUE)

body <- dashboardBody(
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "custom.css"),
    tags$link(href="https://fonts.googleapis.com/css?family=Archivo+Black&display=swap")
  ),
  tags$style(rel = "stylesheet", type = "text/css", href = "custom.css"),
  div(
    div(
      div(
        div(img(src="jason_circle.png", height="140px"), class = "sliderPanel person-pic"),
        div(
          div("Jason Payne", class = "person-name"),
          div("Data Science Manager", class = "person-role"),
          class = "sliderPanel"
        ),
        div(
          div("About Me", class = "body-heading"),
          div(penPicture, class = "text-description"),
          style = "border-left:3px solid #F2F2F2;margin-left:35px;margin-top:40px;"
        ),
        div(
          div("Contact Me", class = "body-heading"),
          div(
            div(icon("envelope"), class = "contact-icon  slider-middle"), 
            div("jason@orb10x.com", class = "contact-text  slider-middle")
          ),
          div(
            div(icon("linkedin"), class = "contact-icon slider-middle" ), 
            div("linkedin.com/in/jason-payne-133b1022", class = "contact-text slider-middle")
          ),
          div(
            div(icon("github"), class = "contact-icon slider-middle" ), 
            div("github.com/3minuterecord", class = "contact-text slider-middle")
          ),
          div(
            div(icon("twitter"), class = "contact-icon slider-middle" ), 
            div("@Jas0nPayne", class = "contact-text slider-middle")
          ), style = "margin:15px;"
        ),
        div(
          div("Training", span(" in Data Analytics & Machine Learning", style = "font-size:13px;font-weight:300;font-family:Calibri,sans-serif;"), class = "body-heading"),
          div(
            div(img(src="orb10x_Long_White.svg", height = 30), class="logo-image")
          ), style = "margin:15px;"
        )
      ), br(), br(), br(), br(), br(), 
      class = "sidebar-float"
    ), class="wrap"
  ),
  div(
    div(
      div(
        plotlyOutput("careerTimeline", width = "90%", height = '120px')
      ),
      div(
        div("SLIDE DESIGN", class = "heading01"),
        div(
          imageOutput("slideImage01", width = "100%", height = "290px", inline = TRUE),
          imageOutput("slideImage02", width = "100%", height = "290px", inline = TRUE),
          imageOutput("slideImage03", width = "100%", height = "290px", inline = TRUE),
          imageOutput("slideImage04", width = "100%", height = "290px", inline = TRUE),
          imageOutput("slideImage05", width = "100%", height = "290px", inline = TRUE),
          imageOutput("slideImage06", width = "100%", height = "290px", inline = TRUE),
        style = "width:100%;margin-left:15px;"
        )
      ), class = 'main-wrap'
    ), class = 'main'
  ),
  # TODO -- Figure out styling bug for bottom of page when below is removed
  div("end of page", style = "color:#ECF0F5;")
)

dashboardPage(title = "ORB10X", header, sidebar, body, skin = "green")

