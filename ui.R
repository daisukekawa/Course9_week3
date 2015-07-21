library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Women's weight prediction"),
        sidebarPanel(
                sliderInput('height', 'height (inch)', 58, min=58, max=72, step=1),
                submitButton('Submit')
        ),
        mainPanel(
                tabsetPanel(
                        h5('This app predict the weight of women from the "Average Heights and Weights for American Women" in R-packages.'),
                        h5('Please enter the height in the box and push submit button.')
                ),
                h4('Predicted weight is'),
                verbatimTextOutput("prediction")
                
        )
))