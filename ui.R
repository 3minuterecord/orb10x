library(shinydashboard)
source('global.R')

projects <- read.csv("data/projectsData.csv", stringsAsFactors = FALSE)
names(projects)[1] <- "Name"

penPicture <- "I'm currently Head of Data Science for Wood and Analytics Manager for Wood Ireland.  
I have a Bachelor of Science degree and Diploma in Structural Engineering from Technology University Dublin. 
I have over 20 years experience in delivery of engineering, digital and technology projects.  In the last 5 years, 
I have specialized in data science, managing Wood's centre of excellence for data analytics (located in Ireland) 
and delivering a wide range of AI & analytics projects across multiple industries and business functions."

CURRENT_ROLE <- "Data Science Manager"

trainingDescription <- "I provide on-site training courses in data-driven techniques, tools & strategies
delivered to teams sizes up to 15 people over 1-2 days designed to transform working practices."

weeklyTasks <- data.frame(
  Task = c("Team management, coordination & peer/solution reviews", 
           "Writing code & developing data-driven solutions", 
           "Creating marketing & communications material", 
           "Identifying opportunities & winning new work",
           "Researching & evaluating new technologies"),
  Split = c(9, 23, 10, 35, 13),
  stringsAsFactors = FALSE
) %>% dplyr::arrange(desc(Split))

SLIDE_HEIGHT <- "290px"

WEEKLY_BAR_WIDTH = 360

header <- dashboardHeader(title = "www.ORB10X.com", titleWidth = 220)

sidebar <- dashboardSidebar(disable = TRUE)

body <- dashboardBody(
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "custom.css"),
    tags$link(href="https://fonts.googleapis.com/css?family=Archivo+Black&display=swap"),
    tags$link(href="https://fonts.googleapis.com/css?family=Archivo&display=swap"),
    tags$script(src=paste0("https://kit.fontawesome.com/", password_config$password, ".js"), crossorigin="anonymous") # fontawesome pro license
  ),
  tags$style(rel = "stylesheet", type = "text/css", href = "custom.css"),
  div(
    div(
      div(img(src="my_circle_pic.png", height="140px"), class = "sliderPanel person-pic"),
      div(
        div("Jason Payne", class = "person-name"),
        div(CURRENT_ROLE, class = "person-role"),
        class = "sliderPanel"
      ),
      div(
        div("About Me", class = "body-heading"),
        div(penPicture, class = "text-description"),
        class = "pen-picture-box"
      ),
      # ---------------------------------------------------------------------+
      # Contact information & content links                                  |
      # ---------------------------------------------------------------------+
      div(
        div(
          div(tags$i(class = "fas fa-envelope fa-fw"), class = "contact-icon  slider-middle"), 
          div("jason@orb10x.com", class = "contact-text  slider-middle")
        ),
        div(
          div(tags$i(class = "fab fa-linkedin fa-fw"), class = "contact-icon slider-middle" ), 
          div(a("linkedin.com/in/jason-payne-133b1022", href="https://www.linkedin.com/in/jason-payne-133b1022/", style = "color:#FFFFFF;", target="_blank"), 
              class = "contact-text slider-middle")
        ),
        div(
          div(tags$i(class = "fab fa-github fa-fw"), class = "contact-icon slider-middle" ), 
          div(a("github.com/3minuterecord", href="https://github.com/3minuterecord/", style = "color:#FFFFFF;", target="_blank"), 
              class = "contact-text slider-middle")
        ),
        div(
          div(tags$i(class = "fab fa-twitter fa-fw"), class = "contact-icon slider-middle" ), 
          div("@Jas0nPayne", class = "contact-text slider-middle")
        ), style = "margin:15px;"
      ),
      # ---------------------------------------------------------------------+
      # Add a section on working week                                        |
      # ---------------------------------------------------------------------+
      div(
        div("My Current Role", class = "body-heading"),
        div(weeklyTasks$Task[1], class = "week-description-text"),
        div(
          div(class = "left-bar", style = paste0("width:", (weeklyTasks$Split[1]/100)*WEEKLY_BAR_WIDTH, "px;")),
          div(class = "right-bar", style = paste0("width:", (WEEKLY_BAR_WIDTH - (weeklyTasks$Split[1]/100)*WEEKLY_BAR_WIDTH), "px;")), style = "margin-left:35px;height:5px;"
        ),
        div(weeklyTasks$Task[2], class = "week-description-text"),
        div(
          div(class = "left-bar", style = paste0("width:", (weeklyTasks$Split[2]/100)*WEEKLY_BAR_WIDTH, "px;")),
          div(class = "right-bar", style = paste0("width:", (WEEKLY_BAR_WIDTH - (weeklyTasks$Split[2]/100)*WEEKLY_BAR_WIDTH), "px;")), style = "margin-left:35px;height:5px;"
        ),
        div(weeklyTasks$Task[3], class = "week-description-text"),
        div(
          div(class = "left-bar", style = paste0("width:", (weeklyTasks$Split[3]/100)*WEEKLY_BAR_WIDTH, "px;")),
          div(class = "right-bar", style = paste0("width:", (WEEKLY_BAR_WIDTH - (weeklyTasks$Split[3]/100)*WEEKLY_BAR_WIDTH), "px;")), style = "margin-left:35px;height:5px;"
        ),
        div(weeklyTasks$Task[4], class = "week-description-text"),
        div(
          div(class = "left-bar", style = paste0("width:", (weeklyTasks$Split[4]/100)*WEEKLY_BAR_WIDTH, "px;")),
          div(class = "right-bar", style = paste0("width:", (WEEKLY_BAR_WIDTH - (weeklyTasks$Split[4]/100)*WEEKLY_BAR_WIDTH), "px;")), style = "margin-left:35px;height:5px;"
        ),
        div(weeklyTasks$Task[5], class = "week-description-text"),
        div(
          div(class = "left-bar", style = paste0("width:", (weeklyTasks$Split[5]/100)*WEEKLY_BAR_WIDTH, "px;")),
          div(class = "right-bar", style = paste0("width:", (WEEKLY_BAR_WIDTH - (weeklyTasks$Split[5]/100)*WEEKLY_BAR_WIDTH), "px;")), style = "margin-left:35px;height:5px;"
        ),
        #div(weeklyTasks$Task[6], class = "week-description-text"),
        #div(
        #  div(class = "left-bar", style = paste0("width:", (weeklyTasks$Split[6]/100)*WEEKLY_BAR_WIDTH, "px;")),
        #  div(class = "right-bar", style = paste0("width:", (WEEKLY_BAR_WIDTH - (weeklyTasks$Split[6]/100)*WEEKLY_BAR_WIDTH), "px;")), style = "margin-left:35px;height:5px;"
        #), 
        style = "margin:15px;"
      ),
      div(style = "clear:both;"),
      # ---------------------------------------------------------------------+
      # Add a section on favourite resources, e.g. books, podcasts, websites |
      # ---------------------------------------------------------------------+
      div(
        div("Education & Certification", class = "body-heading"),
        div(
          div(tags$i(class = "fal fa-university fa-fw"), class = "contact-icon  slider-middle"), 
          div("BSc Engineering Science, TUD (1994-1998)" , class = "contact-text  slider-middle")
        ),
        div(
          div(tags$i(class = "fal fa-diploma fa-fw"), class = "contact-icon  slider-middle"), 
          div("Dip Structural Engineering, TUD (1994-1998)" , class = "contact-text  slider-middle")
        ),
        div(
          div(tags$i(class = "fal fa-file-certificate fa-fw"), class = "contact-icon slider-middle" ), 
          div("Chartered Engineer" , class = "contact-text  slider-middle")
        ), style = "margin:15px;"
      ),
      # ---------------------------------------------------------------------+
      # Add a section on favourite resources, e.g. books, podcasts, websites |
      # ---------------------------------------------------------------------+
      div(
        div("Favourite Resources", class = "body-heading"),
        div(
          div(tags$i(class = "fal fa-book fa-fw"), class = "contact-icon  slider-middle"), 
          div(span("Predictive Analytics: ", style = "color:#EBCA48;"), 
              a("www.machinelearningbook.com", href="https://www.machinelearningbook.com/", target="_blank"), 
              class = "contact-text  slider-middle")
        ),
        div(
          div(tags$i(class = "fal fa-book fa-fw"), class = "contact-icon  slider-middle"), 
          div(span("Statistics: ", style = "color:#EBCA48;"), 
              a("Elements of Statistical Learning", href="https://www.springer.com/gp/book/9780387848570", target="_blank"), 
              class = "contact-text  slider-middle")
        ),
        div(
          div(tags$i(class = "fal fa-book fa-fw"), class = "contact-icon  slider-middle"), 
          div(span("Coding #1: ", style = "color:#EBCA48;"), 
              a("Getting Real", href="https://basecamp.com/books/getting-real/", target="_blank"), 
              class = "contact-text  slider-middle")
        ),
        div(
          div(tags$i(class = "fal fa-book fa-fw"), class = "contact-icon  slider-middle"), 
          div(span("Coding #2: ", style = "color:#EBCA48;"), 
              a("Smalltalk Best Practice Patterns", href="https://www.amazon.co.uk/Smalltalk-Best-Practice-Patterns-Kent/dp/013476904X", target="_blank"), 
              class = "contact-text  slider-middle")
        ),
        div(
          div(tags$i(class = "fal fa-file-alt fa-fw"), class = "contact-icon  slider-middle"), 
          div(span("Newsletter: ", style = "color:#EBCA48;"), 
              a("Data Elixir", href="https://www.dataelixir.com/", target="_blank"), 
              class = "contact-text  slider-middle")
        ),
        div(
          div(tags$i(class = "fal fa-file-alt fa-fw"), class = "contact-icon  slider-middle"), 
          div(span("Papers: ", style = "color:#EBCA48;"), 
              a("Papers with Code", href="https://www.paperswithcode.com/", target="_blank"), 
              class = "contact-text  slider-middle")
        ),
        div(
          div(tags$i(class = "fal fa-file-audio fa-fw"), class = "contact-icon slider-middle" ), 
          div(span("Audiobook: ", style = "color:#EBCA48;"), 
              a("Data Science, J. Kelleher & B. Tierney", href="https://www.amazon.com/Data-Science/dp/B07CB26GZC/", target="_blank"),
              class = "contact-text slider-middle")
        ),
        div(
          div(tags$i(class = "fal fa-podcast fa-fw"), class = "contact-icon slider-middle" ), 
          div(span("Podcast: ", style = "color:#EBCA48;"), 
              a("Data Stories", href="https://www.datastori.es/", target="_blank"), 
              class = "contact-text slider-middle")
        ),
        div(
          div(tags$i(class = "fal fa-podcast fa-fw"), class = "contact-icon slider-middle" ), 
          div(span("Podcast: ", style = "color:#EBCA48;"), 
              a("Linear Digressions", href="https://www.lineardigressions.com/", target="_blank"), 
              class = "contact-text slider-middle")
        ), 
        div(
          div(tags$i(class = "fal fa-podcast fa-fw"), class = "contact-icon slider-middle" ), 
          div(span("Podcast: ", style = "color:#EBCA48;"), 
              a("Talking Machines", href="https://www.thetalkingmachines.com/", target="_blank"), 
              class = "contact-text slider-middle")
        ),
        div(
          div(tags$i(class = "fal fa-chalkboard-teacher fa-fw"), class = "contact-icon slider-middle" ), 
          div(span("MOOC: ", style = "color:#EBCA48;"), 
              a("Analytics Edge, edX / MITx", href="https://www.edx.org/course/the-analytics-edge/", target="_blank"), 
              class = "contact-text slider-middle")
        ),
        div(
          div(tags$i(class = "fal fa-chalkboard-teacher fa-fw"), class = "contact-icon slider-middle" ), 
          div(span("MOOC: ", style = "color:#EBCA48;"), 
              a("Deep Learning, Andrew Ng / Coursera", href="https://www.coursera.org/specializations/deep-learning/", target="_blank"), 
              class = "contact-text slider-middle")
        ),
        div(
          div(tags$i(class = "fal fa-chalkboard-teacher fa-fw"), class = "contact-icon slider-middle" ), 
          div(span("Tutorials: ", style = "color:#EBCA48;"), 
              a("Data Camp (R, Python & SQL coding)", href="https://www.datacamp.com/", target="_blank"), 
              class = "contact-text slider-middle")
        ), style = "margin:15px;"
      ),
      # ---------------------------------------------------------------------+
      # Add a section on personal strengths                                  |
      # ---------------------------------------------------------------------+
      div(
        div("Strengths", class = "body-heading"),
        div(
          div(tags$i(class = "fal fa-tasks fa-fw"), class = "contact-icon slider-middle" ), 
          div("Project management & digital transformation", class = "contact-text slider-middle")
        ),
        div(
          div(tags$i(class = "far fa-database fa-fw"), class = "contact-icon slider-middle" ), 
          div("Data strategy & cloud infrastructure", class = "contact-text slider-middle")
        ),
        div(
          div(tags$i(class = "fab fa-r-project fa-fw"), class = "contact-icon  slider-middle"), 
          div("R programming & Shiny app development", class = "contact-text  slider-middle")
        ),
        div(
          div(tags$i(class = "fal fa-magic fa-fw"), class = "contact-icon slider-middle" ), 
          div("Machine learning & AI solution delivery", class = "contact-text slider-middle")
        ),
        div(
          div(tags$i(class = "fal fa-puzzle-piece fa-fw"), class = "contact-icon slider-middle" ), 
          div("Engineering, mathematics & problem solving", class = "contact-text slider-middle")
        ),
        div(
          div(tags$i(class = "fal fa-trophy-alt fa-fw"), class = "contact-icon slider-middle" ), 
          div("Scoping & winning work", class = "contact-text slider-middle")
        ),
        div(
          div(tags$i(class = "fal fa-pencil-ruler fa-fw"), class = "contact-icon slider-middle" ), 
          div("Visual & Graphic Design (slides, infographics, UI/UX)", class = "contact-text slider-middle")
        ), style = "margin:15px;"
      ),
      # ---------------------------------------------------------------------+
      # Add a section on professional experience                             |
      # ---------------------------------------------------------------------+
      div(
        div("Experience", class = "body-heading"),
        div(
          div("Head of AI & Analytics", class = "sub-heading"),
          div("Wood ", a("(www.woodplc.com)", href="https://www.woodplc.com/", target="_blank"), class = "sub-bold-heading"),
          div(tags$i(class = "fal fa-calendar-alt fa-fw"), class = "experience-icon slider-middle" ),
          div("June 2019 - Present", class = "date-text slider-middle"),
          div(tags$i(class = "fal fa-map-marker-alt fa-fw"), class = "experience-icon slider-middle" ),
          div("Galway, Ireland", class = "date-text slider-middle"),
          tags$ul(tags$li("Tactical execution of data-driven projects", class = "experience-text")),
          tags$ul(tags$li("Data collection, storage & access strategies", class = "experience-text")),
          tags$ul(tags$li("Bid team support (content, case studies, method statements) for winning work", class = "experience-text")),
          tags$ul(tags$li("Client demos & bid presentations (data-driven transformation)", class = "experience-text")),
          tags$ul(tags$li("Lead for global community of practice for data science", class = "experience-text"))
        ),
        div(
          div("Data Science Manager", class = "sub-heading-divide"),
          div("Wood ", a("(www.woodplc.com)", href="https://www.woodplc.com/", target="_blank"), class = "sub-bold-heading"),
          div(tags$i(class = "fal fa-calendar-alt fa-fw"), class = "experience-icon slider-middle" ),
          div("Feb 2015 - Present", class = "date-text slider-middle"),
          div(tags$i(class = "fal fa-map-marker-alt fa-fw"), class = "experience-icon slider-middle" ),
          div("Galway, Ireland", class = "date-text slider-middle"),
          tags$ul(tags$li("Run a global centre of excellence for AI & analytics (set up in Sep 2016)", class = "experience-text")),
          tags$ul(tags$li("Identify & collaborate with our global data science & SME community", class = "experience-text")),
          tags$ul(tags$li("Identify opportunities for data science value-add within Wood", class = "experience-text")),
          tags$ul(tags$li("Coordinate recruitment for data science & related skills", class = "experience-text"))
        ),
        div(
          div("Senior Project / Engineering Manager", class = "sub-heading-divide"),
          div("Wood ", a("(www.woodplc.com)", href="https://www.woodplc.com/", target="_blank"), class = "sub-bold-heading"),
          div(tags$i(class = "fal fa-calendar-alt fa-fw"), class = "experience-icon slider-middle" ),
          div("June 2019 - Present", class = "date-text slider-middle"),
          div(tags$i(class = "fal fa-map-marker-alt fa-fw"), class = "experience-icon slider-middle" ),
          div("Galway, Ireland", class = "date-text slider-middle"),
          tags$ul(tags$li("Egina UFR lead for in-country UFR basic engineering (Nigeria)", class = "experience-text")),
          tags$ul(tags$li("Delivery manager for Hadera gas import terminal (offshore Israel)", class = "experience-text")),
          tags$ul(tags$li("Project manager & technical lead for SLARP Joint industry project", class = "experience-text")),
          tags$ul(tags$li("Technical oversight & scope verification for SWRP OIE (structures)", class = "experience-text"))
        ),
        div(
          div("Senior Structural Engineer", class = "sub-heading-divide"),
          div("DBFL Consulting Engineers ", a("(www.dbfl.ie)", href="https://www.dbfl.ie/", target="_blank"), class = "sub-bold-heading"),
          div(tags$i(class = "fal fa-calendar-alt fa-fw"), class = "experience-icon slider-middle" ),
          div("June 2008 - Sept 2008", class = "date-text slider-middle"),
          div(tags$i(class = "fal fa-map-marker-alt fa-fw"), class = "experience-icon slider-middle" ),
          div("Dublin, Ireland", class = "date-text slider-middle"),
          tags$ul(tags$li("Senior structural engineer for residential & commerical buildings", class = "experience-text"))
        ),
        div(
          div("Senior Structural Engineer", class = "sub-heading-divide"),
          div("Horganlynch Consulting Engineers ", a("(www.horganlynch.ie)", href="https://www.horganlynch.ie/", target="_blank"), class = "sub-bold-heading"),
          div(tags$i(class = "fal fa-calendar-alt fa-fw"), class = "experience-icon slider-middle" ),
          div("July 2007 - June 2008", class = "date-text slider-middle"),
          div(tags$i(class = "fal fa-map-marker-alt fa-fw"), class = "experience-icon slider-middle" ),
          div("Dublin, Ireland", class = "date-text slider-middle"),
          tags$ul(tags$li("Civil & structural design for education, sports & commerical buildings", class = "experience-text"))
        ),
        div(
          div("Associate Director", class = "sub-heading-divide"),
          div("Kilgallen & Partners ", a("(kilgallen.ie)", href="http://kilgallen.ie/", target="_blank"), class = "sub-bold-heading"),
          div(tags$i(class = "fal fa-calendar-alt fa-fw"), class = "experience-icon slider-middle" ),
          div("Nov 2003 - July 2007", class = "date-text slider-middle"),
          div(tags$i(class = "fal fa-map-marker-alt fa-fw"), class = "experience-icon slider-middle" ),
          div("Laois, Ireland", class = "date-text slider-middle"),
          tags$ul(tags$li("Civil & structural design for education, industrial & commerical buildings", class = "experience-text"))
        ),
        div(
          div("Senior Riser Global Analysis Engineer", class = "sub-heading-divide"),
          div("Marine Computation Services (MCS)", class = "sub-bold-heading"),
          div(tags$i(class = "fal fa-calendar-alt fa-fw"), class = "experience-icon slider-middle" ),
          div("Nov 2000 - Nov 2003", class = "date-text slider-middle"),
          div(tags$i(class = "fal fa-map-marker-alt fa-fw"), class = "experience-icon slider-middle" ),
          div("Galway, Ireland", class = "date-text slider-middle"),
          tags$ul(tags$li("Statistical analysis of riser global analysis data", class = "experience-text")),
          tags$ul(tags$li("Riser system finite element analysis (time & frequency domain)", class = "experience-text")),
          tags$ul(tags$li("Development of VBA apps for data handling & processing", class = "experience-text"))
        ),
        div(
          div("Structural Engineer", class = "sub-heading-divide"),
          div("OCSC Consulting Engineers", class = "sub-bold-heading"),
          div(tags$i(class = "fal fa-calendar-alt fa-fw"), class = "experience-icon slider-middle" ),
          div("Sep 1999 - Oct 2000", class = "date-text slider-middle"),
          div(tags$i(class = "fal fa-map-marker-alt fa-fw"), class = "experience-icon slider-middle" ),
          div("Dublin, Ireland", class = "date-text slider-middle"),
          tags$ul(tags$li("Structural design of medium-large scale residential buildings", class = "experience-text"))
        ),
        div(
          div("Structural Engineer", class = "sub-heading-divide"),
          div("Michael Barclay Partnership", class = "sub-bold-heading"),
          div(tags$i(class = "fal fa-calendar-alt fa-fw"), class = "experience-icon slider-middle" ),
          div("June 1998 - May 1999", class = "date-text slider-middle"),
          div(tags$i(class = "fal fa-map-marker-alt fa-fw"), class = "experience-icon slider-middle" ),
          div("London, UK", class = "date-text slider-middle"),
          tags$ul(tags$li("Structural engineer for several conservation/heritage projects", class = "experience-text"))
        ),style = "margin:15px;"
      ),
      # ---------------------------------------------------------------------+
      # Add a section on personal interests                                  |
      # ---------------------------------------------------------------------+
      div(
        div("Training?", span("", class = "heading-note"), class = "body-heading"),
        div(trainingDescription, class = "text-description"),
        div(
          div(img(src="orb10x_Long_Light_Medium.svg", height = 25), class="logo-image")
        ), br(), style = "margin:15px;"
      ),
      # Simple hit counter (reading from SQL database)
      uiOutput("showHitCount"),
    ), class = "sidebar-float"
  ), 
  # ---------------------------------------------------------------------+
  # Career milestone timeline                                            |
  # ---------------------------------------------------------------------+
  div(
    div("MILESTONES", span("(hover over blocks for details...)", class = "heading-note"), class = "heading01"),
    div(
      plotlyOutput("careerTimeline", width = "93%", height = '125px'), style = "overflow: auto;" # overflow used to 
      # avoid chart overlapping with sidebar
    )
  ),
  # ---------------------------------------------------------------------+
  # Recent Projects of Interest tiles / boxes                            |
  # ---------------------------------------------------------------------+
  div("RECENT PROJECTS", span("(selection of Team Projects)", class = "heading-note"), class = "heading01"),
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
  # ---------------------------------------------------------------------+
  # Sample slides / content                                              |
  # ---------------------------------------------------------------------+
  div(
    div(
      div("SLIDES & NOTES", span("(by orb10x)", class = "heading-note"), class = "heading01"),
      imageOutput("slideImageIntro", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImageAIdivide", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImageStudies", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImageInsight", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImageInteresting", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImageDesignThinking", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImageCrisp", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImageGain", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImageTransML", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImageAI", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImageANN", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImageDeepLearning", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImageCNN", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImageDecisions", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImageFeatureEng", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImageAutoML", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImageOpenSource", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImageDA", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImageDomains", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImageColor", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImageIDE", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImageTransDataArch", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImagePlatform", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImageMaturity", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImageIA", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImageBigData", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImageCodeExample", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      imageOutput("slideImageDataToValue", width = "100%", height = SLIDE_HEIGHT, inline = TRUE),
      br(),
      style = "width:100%;margin-left:0px;"
    ), style = "margin-left:46px;"
  ),
)

dashboardPage(title = "ORB10X", header, sidebar, body, skin = "green")

