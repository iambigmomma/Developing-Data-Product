
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Predict your car's mpg"),
        sidebarPanel(
                h3("Input your car's  data:"),
                numericInput('cyl','Number of cylinders', 6 , min = 0 , max = 10 , step=1),
                numericInput('disp','Displacement (cu.in.)',90, min = 0 , max = 200, step = 1 ),
                numericInput('hp','Gross horsepower',80,min=0,max=200,step=1),
                numericInput('drat','Rear axle ratio',1.55, min = 0 , max = 100, step = 0.01 ),
                numericInput('wt','Weight (lb/1000)',2, min = 0 , max = 10, step = 0.01 ),
                numericInput('qsec','1/4 mile time',3, min = 0 , max = 40, step = 0.01 ),
                numericInput('vs','V/S',0, min = 0 , max = 10, step = 1 ),
                numericInput('am','Transmission (0 = automatic, 1 = manual)',0, min = 0 , max = 1, step = 1 ),
                numericInput('gear','Number of forward gears',4, min = 0 , max = 10, step = 1 ),
                numericInput('carb','Number of carburetors', 1, min = 0, max = 10, step = 1),
                submitButton('Submit')
                
        ),
        mainPanel(
                h3('The result is based on the regression model for the data in mtcars'),
                h4('Your mpg'),
                verbatimTextOutput("oid1")
        )
))