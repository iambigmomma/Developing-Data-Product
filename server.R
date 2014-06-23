

library(shiny)


calculate <- function(am,hp,wt,cyl){
        33.70832+ 1.80921 * am -0.03211 * hp -2.49683*wt -2.16368*cyl
}
shinyServer(
        function(input, output) {              
                output$oid1 <- renderPrint({calculate(input$am,input$hp,input$wt,input$cyl)})
        }
)
