### Load dependencies
source("utils.R")

### UI
page_sidebar(
  includeCSS("www/bootstrap.css"),
  fillable = TRUE,
 
  sidebar = sidebar(
    id = "show",
    width = 600,
    title = "Warenkorb",
    actionButton(
      "infobutton",
      label = "Info",
      icon = icon("info-circle"),
      style = "position:absolute; top:40px; left:150px;"
    ),
    fluidRow(
      column(8, numericInput("n", "Anzahl Produkte", value = 1, min = 1, max=10))
    ),
    fluidRow(
      column(8, "Produkte"),
      column(4, "Menge (kg)")
    ),
    fluidRow(
      column(8, uiOutput("product")),
      column(4, uiOutput("weight"))
    ),
    fluidRow(actionButton("display", "Berechne Biodiversity-Footprint", width = 200, class = "btn-primary btn-lg")
    )
  ),
  fluidRow(
    column(6, leaflet::leafletOutput("map",  height = "45vh")),
    column(6, plotlyOutput("sunburst",  height = "45vh"))
  ),
  fluidRow(
    column(6, plotlyOutput("barchart_countries",  height = "45vh")),
    column(6, plotlyOutput("barchart_warenkorb",  height = "45vh"))
  )
)


