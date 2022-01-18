# Shiny Developer @Appsilon
## Introduction - Project's aim
Build a dashboard that is to visualize selected species observations on the map and how often it is observed.
## Input Data:
>"Occurence.csv" ("Only limited to Poland")
### Libraries:
  * "shiny"
  * "shinydashboard"
  * "dplyr"
  * "leaflet"
  * "htmltools"
  * "shinyjs"
### Technologies: 
1. RStudio
Version 1.4.1717
© 2009-2021 RStudio, PBC
2. R version 4.1.1 (2021-08-10) -- "Kick Things"
3. CSS

### Deployment:
Deployed in the Shinyapps.io Server
### Launch:

## R Shiny Application Set-Up:
### The application consists of two modules...

* The first R Shiny module creates the select input at the sidebar in the  UI and then returns the select value in the server module.
* The second R Shiny module creates the infobox and the Leaflet map with selected observations. Depending on the search, this module uses the select input from module one and returns the matching results at the search bar and map.
* The final app.R file will add these source files and run the shiny app.

### WWW Folder
>  main.css file is to add CSS elements to add style to the shiny application.

>   icon.png file to add an icon to the shiny app at the header place.
