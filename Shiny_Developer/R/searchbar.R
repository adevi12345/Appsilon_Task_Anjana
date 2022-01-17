# searchbar.R Source file is located at R folder...

# Start of the User Interface Module-1

searchbar_ui <- function(id) {
  ns <- shiny::NS(id)  # Namespace for Unique id's
  tagList(
    
    # Create select input to search the names of the user input
    
    selectInput(ns('search_text'),tags$h4('Search with ScientificName:'), choices = NULL, selectize= TRUE )
    
  )
  
}
# End of the User Interface Module-1

# Start of the Server Module-1
searchbar_server <- function(id) {
  
  moduleServer(id, function(input, output, session) {   # Moduleserver function starts..
    
    input_dataset<-read.csv("./input_final.csv")
    
    # Observe is to update the choices to the select input widget
    observe(
      updateSelectInput(
        session,"search_text",choices = unique(c(input_dataset$scientificName,input_dataset$vernacularName)) 
      ))  # End of the observe
    
    # Return the list of values from the Server Module-1
    return(
      list(
        input_search = reactive({input$search_text}),  # Return the search input reactive
        input_dataset=reactive({input_dataset})  # Return the inputdataset reactive
      )
    ) # End of the return
    
  })  # End of the Module server function
}  # End of the Server Module-1

