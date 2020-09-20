pageTransitionButton <- function (id, label) {
  ns <- NS(id)
  
  tags$div(
    tags$a(
    id=ns("button"),
    class="btn-green action-button",
    label
    )
  )
  
}


pageTransitionButtonServer <- function(id, page, ...) {
  moduleServer(
    id,
    function(input, output, session){
      onclick("button",{
        list( ... )
        change_page(page)
              
      })
    }
  )
}