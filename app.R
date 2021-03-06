library(shiny)
library(shiny.router)
library(shinyjs)
library(sass)

source("./src/config/index.R")


ui <- tags$html(
  tags$head(
    useShinyjs(),
    tags$link(
      href="https://fonts.googleapis.com/css2?family=PT+Sans+Narrow:wght@400;700&display=swap",           
      rel="stylesheet"
    ),
    tags$link(
    href="https://fonts.googleapis.com/css2?family=Rajdhani&display=swap",
    rel="stylesheet")
  ),
  tags$style(sass(sass_file("./src/styles/main.scss"),
                  options = sass_options(output_style="expanded"),
                  output = "./src/styles/styles.scss"
                  )
             ),
  tags$link(rel="icon", href = ".assets/logos/shotlogo.png"),
  tags$meta(name= "description", content ="Plot Factory"),
  tags$meta(charset= "utf-8"),
  tags$meta(name= "viewport", content = "width=device-width, initial-scale=1"),
  tags$title("Plot Factory"),
  
  tags$body(
    router_ui()
  )
)

server <- function(input, output, session) {
  router(input,output,session)
}

options(shiny.port = 3333)
shinyApp(ui, server)

