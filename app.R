library(shiny)

default_name <- "World"
repeat_count <- 10

ui <- fluidPage(
    titlePanel("Hello World"),
    textInput("name", "Your name", value = default_name),
    verbatimTextOutput("greeting")
)

server <- function(input, output, session) {
    output$greeting <- renderText({
        repeated_names <- character(repeat_count)

        for (i in seq_len(repeat_count)) {
            repeated_names[i] <- input$name
        }

        paste(repeated_names, collapse = "\n")
    })
}

shinyApp(ui = ui, server = server)
