library(shinydashboard)

projects <- read.csv("data/projectsData.csv", stringsAsFactors = FALSE)
names(projects)[1] <- "Name"

penPicture <- "I'm currently Head of Data Science for Wood and Analytics Manager for Wood Ireland.  
I have a Bachelor of Science degree and Diploma in Structural Engineering from Technology University Dublin. 
I have over 20 years experience in delivery of engineering, technology and data projects.  In the last 5 years, 
I have specialized in data science, managing Wood's centre of excellence for data analytics (located in Ireland) 
and delivering a wide range of AI & analytics projects across multiple industries and business functions."

trainingDescription <- "Training courses in Data-driven techniques, tools & strategies
delivered to teams sizes up to 15 people over 1-2 days designed to transform working practices."

header <- dashboardHeader(title = "www.ORB10X.com", titleWidth = 220)

sidebar <- dashboardSidebar(disable = TRUE)

body <- dashboardBody(
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "custom.css"),
    tags$link(href="https://fonts.googleapis.com/css?family=Archivo+Black&display=swap"),
    tags$link(href="https://fonts.googleapis.com/css?family=Archivo&display=swap"),
    tags$script(src="https://kit.fontawesome.com/bb5623bc1e.js", crossorigin="anonymous") # fontawesome pro license
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
            div(tags$i(class = "fas fa-envelope fa-fw"), class = "contact-icon  slider-middle"), 
            div("jason@orb10x.com", class = "contact-text  slider-middle")
          ),
          div(
            div(tags$i(class = "fab fa-linkedin fa-fw"), class = "contact-icon slider-middle" ), 
            div("linkedin.com/in/jason-payne-133b1022", class = "contact-text slider-middle")
          ),
          div(
            div(tags$i(class = "fab fa-github fa-fw"), class = "contact-icon slider-middle" ), 
            div("github.com/3minuterecord", class = "contact-text slider-middle")
          ),
          div(
            div(tags$i(class = "fab fa-twitter fa-fw"), class = "contact-icon slider-middle" ), 
            div("@Jas0nPayne", class = "contact-text slider-middle")
          ), style = "margin:15px;"
        ),
        div(
          div("Training", span("", class = "heading-note"), class = "body-heading"),
          div(trainingDescription, class = "text-description"),
          div(
            div(img(src="orb10x_Long_Light_Medium.svg", height = 25), class="logo-image")
          ), style = "margin:15px;"
        ),
        br(),
        div(
          div("Favourite Resources", class = "body-heading"),
          div(
            div(tags$i(class = "fal fa-book fa-fw"), class = "contact-icon  slider-middle"), 
            div(span("Book: ", style = "color:#EBCA48;"), "www.machinelearningbook.com", class = "contact-text  slider-middle")
          ),
          div(
            div(tags$i(class = "fal fa-file-alt fa-fw"), class = "contact-icon  slider-middle"), 
            div(span("Newsletter: ", style = "color:#EBCA48;"), "www.dataelixir.com", class = "contact-text  slider-middle")
          ),
          div(
            div(tags$i(class = "fal fa-file-alt fa-fw"), class = "contact-icon  slider-middle"), 
            div(span("Papers: ", style = "color:#EBCA48;"), "www.paperswithcode.com", class = "contact-text  slider-middle")
          ),
          div(
            div(tags$i(class = "fal fa-file-audio fa-fw"), class = "contact-icon slider-middle" ), 
            div(span("Audiobook: ", style = "color:#EBCA48;"), "Data Science, J. Kelleher & B. Tierney", class = "contact-text slider-middle")
          ),
          div(
            div(tags$i(class = "fal fa-podcast fa-fw"), class = "contact-icon slider-middle" ), 
            div(span("Podcast: ", style = "color:#EBCA48;"), "Data Stories", class = "contact-text slider-middle")
          ),
          div(
            div(tags$i(class = "fal fa-podcast fa-fw"), class = "contact-icon slider-middle" ), 
            div(span("Podcast: ", style = "color:#EBCA48;"), "Linear Digressions", class = "contact-text slider-middle")
          ), 
          div(
            div(tags$i(class = "fal fa-podcast fa-fw"), class = "contact-icon slider-middle" ), 
            div(span("Podcast: ", style = "color:#EBCA48;"), "Talking Machines", class = "contact-text slider-middle")
          ),
          div(
            div(tags$i(class = "fal fa-chalkboard-teacher fa-fw"), class = "contact-icon slider-middle" ), 
            div(span("MOOC: ", style = "color:#EBCA48;"), "Analytics Edge, edX / MITx", class = "contact-text slider-middle")
          ),
          div(
            div(tags$i(class = "fal fa-chalkboard-teacher fa-fw"), class = "contact-icon slider-middle" ), 
            div(span("Tutorials: ", style = "color:#EBCA48;"), "www.datacamp.com", class = "contact-text slider-middle")
          ), style = "margin:15px;"
        ),
        br(),
        div(
          div("Strengths", class = "body-heading"),
          div(
            div(tags$i(class = "fal fa-tasks fa-fw"), class = "contact-icon slider-middle" ), 
            div("Project & delivery management", class = "contact-text slider-middle")
          ),
          div(
            div(tags$i(class = "far fa-database fa-fw"), class = "contact-icon slider-middle" ), 
            div("Data strategy & information architecture", class = "contact-text slider-middle")
          ),
          div(
            div(tags$i(class = "fab fa-r-project fa-fw"), class = "contact-icon  slider-middle"), 
            div("R programming & Shiny app development", class = "contact-text  slider-middle")
          ),
          div(
            div(tags$i(class = "fal fa-magic fa-fw"), class = "contact-icon slider-middle" ), 
            div("Machine learning & delivery of AI solutions", class = "contact-text slider-middle")
          ),
          div(
            div(tags$i(class = "fal fa-puzzle-piece fa-fw"), class = "contact-icon slider-middle" ), 
            div("Engineering, mathematics & problem solving", class = "contact-text slider-middle")
          ),
          div(
            div(tags$i(class = "fal fa-pencil-ruler fa-fw"), class = "contact-icon slider-middle" ), 
            div("Graphic design for slides, infographics & app UIs", class = "contact-text slider-middle")
          ), style = "margin:15px;"
        ),
        br(),
        div(
          div("Interests", class = "body-heading"),
          div(
            div(tags$i(class = "fas fa-running fa-fw"), class = "contact-icon  slider-middle"), 
            div("Running trails, hills & mountains", class = "contact-text  slider-middle")
          ),
          div(
            div(tags$i(class = "fal fa-guitar-electric fa-fw"), class = "contact-icon slider-middle" ), 
            div("Playing guitar & listening to music", class = "contact-text slider-middle")
          ),
          div(
            div(tags$i(class = "far fa-film fa-fw"), class = "contact-icon slider-middle" ), 
            div("Movies, documentaries & boxsets", class = "contact-text slider-middle")
          ),
          div(
            div(tags$i(class = "fal fa-dog-leashed fa-fw"), class = "contact-icon slider-middle" ), 
            div("Walking my dog in the woods", class = "contact-text slider-middle")
          ),
          div(
            div(tags$i(class = "fal fa-child fa-fw"), class = "contact-icon slider-middle" ), 
            div("Raising my children", class = "contact-text slider-middle")
          ), style = "margin:15px;"
        ),
      ), div("end of page", style = "color:#282923;"), class = "sidebar-float"
    ), class="wrap"
  ),
  div(
    div(
      div("MILESTONES", span("(hover over blocks for details...)", class = "heading-note"), class = "heading01"),
      div(
        plotlyOutput("careerTimeline", width = "95%", height = '125px')
      ),
      div("RECENT PROJECTS", span("(selection)", class = "heading-note"), class = "heading01"),
      div(
        div(
          div(projects$Name[1], class = "box-heading01"), 
          div(projects$Description[1], class = "box-description"),
          div(projects$Status[1], class = "box-heading01"), 
          class = "project-box sliderPanel"
        ),
        div(
          div(projects$Name[2], class = "box-heading01"), 
          div(projects$Description[2], class = "box-description"),
          div(projects$Status[2], class = "box-heading01"), 
          class = "project-box sliderPanel"
        ),
        div(
          div(projects$Name[3], class = "box-heading01"), 
          div(projects$Description[3], class = "box-description"),
          div(projects$Status[3], class = "box-heading01"), 
          class = "project-box sliderPanel"
        ),
        div(
          div(projects$Name[4], class = "box-heading01"), 
          div(projects$Description[4], class = "box-description"),
          div(projects$Status[4], class = "box-heading01"), 
          class = "project-box sliderPanel"
        ),
        div(
          div(projects$Name[5], class = "box-heading01"), 
          div(projects$Description[5], class = "box-description"),
          div(projects$Status[5], class = "box-heading01"), 
          class = "project-box sliderPanel"
        ),
        div(
          div(projects$Name[6], class = "box-heading01"), 
          div(projects$Description[6], class = "box-description"),
          div(projects$Status[6], class = "box-heading01"), 
          class = "project-box sliderPanel"
        ),
        style = "margin-left:15px;"
        ),
      br(),
      div(
        div("SAMPLE SLIDES", class = "heading01"),
        div(
          imageOutput("slideImage01", width = "100%", height = "290px", inline = TRUE),
          imageOutput("slideImage02", width = "100%", height = "290px", inline = TRUE),
          imageOutput("slideImage03", width = "100%", height = "290px", inline = TRUE),
          imageOutput("slideImage04", width = "100%", height = "290px", inline = TRUE),
          imageOutput("slideImage05", width = "100%", height = "290px", inline = TRUE),
          imageOutput("slideImage06", width = "100%", height = "290px", inline = TRUE),
          imageOutput("slideImage07", width = "100%", height = "290px", inline = TRUE),
          imageOutput("slideImage08", width = "100%", height = "290px", inline = TRUE),
          br(),
        style = "width:100%;margin-left:15px;"
        )
      ), class = 'main-wrap'
    ), 
    div("end of info", style = "color:#ECF0F5;"), class = 'main'
  ),
  # TODO -- Figure out styling bug for bottom of page when below is removed
  br(), br(), br(), br(), br(), br(),
  div("end of page", style = "color:#ECF0F5;")
)

dashboardPage(title = "ORB10X", header, sidebar, body, skin = "green")

