library(shiny)
data(women)

weight <- function(height) {
        women[height-57,2]
}

shinyServer(
        function(input, output) {
                output$inputValue <- renderPrint({input$height})
                output$prediction <- renderPrint({weight(input$height)})
        }
)