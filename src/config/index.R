library(shiny)
library(shiny.router)
library(shinyjs)
library(sass)

suppressMessages(library(shiny))
suppressMessages(library(shiny.router))
suppressMessages(library(shinyjs))
suppressMessages(library(sass))


addResourcePath("assets","./src/assets")

source("./src/components/SideBarPanel/index.R")
source("./src/components/SideBarPanelItem/index.R")
source("./src/components/PageTransitionButton/index.R")

source("./src/functions/ui/MainPanel/index.R")
source("./src/functions/ui/MainText/index.R")
source("./src/functions/ui/MainButton/index.R")

source("./src/routes/index.R")
 