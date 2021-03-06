# searchbar.R Source file is located at R folder...

# Start of the User Interface Module-1

searchbar_ui <- function(id) {
  ns <- shiny::NS(id)  # Namespace for Unique id's
  tagList(
    
    # Create select input to search the names of the user input
    
    selectInput(ns('search_text'),tags$h4('Search with ScientificName and vernacularName:'), choices = NULL, selectize= TRUE ),
    tags$hr(),
    uiOutput(ns('numberof_choices_ui'))  # UI for choices list
  )
 
  }
# End of the User Interface Module-1

# Start of the Server Module-1
searchbar_server <- function(id) {

  moduleServer(id, function(input, output, session) {   # Moduleserver function starts..

    input_dataset<-read.csv("./poland_data.csv")  # Load the inputdataset
    
    # Observe is to update the choices to the select input widget
    observe({
      
      choices_values<-unique(c(input_dataset$scientificName,input_dataset$vernacularName))
      
      # Update the selectinput session
      
      updateSelectInput(          
        session,"search_text", choices=c('',choices_values)
      )
     # Render the output of the choice list
       output$numberof_choices_ui<-renderUI({
        valueBox(width=125,length(choices_values), "Number of choices at the Searchbar", icon = icon("list"))
        
      })  # End of the Render function
       
      })  # End of the observe
    
    
    
    # Return the list of values from the Server Module-1
    return(
      list(
        input_search = reactive({input$search_text}),  # Return the search input reactive
        input_dataset=reactive({input_dataset}) # Return the inputdataset reactive
)
    ) # End of the return
    
  })  # End of the Module server function
}  # End of the Server Module-1
