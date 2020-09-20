uiDataImport <- tags$div(

    class = "dataImport",
    sideBarPanel(id = "sideBarPanelDataImport")
  )
  

serverDataImport <- function(input, output, session){
  sideBarPanelServer(id = "sideBarPanelDataImport")
}