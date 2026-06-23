library(shiny)

default_name <- "World"

ui <- fluidPage(
    titlePanel("Hello World"),
    textInput("name", "Your name", value = default_name),
    textOutput("greeting")
)

server <- function(input, output, session) {
    output$greeting <- renderText({
        sprintf("Hello, %s!", input$name)
    })
}

shinyApp(ui = ui, server = server)
