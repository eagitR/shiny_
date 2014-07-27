
library(shiny)


shinyUI(fluidPage(
        titlePanel(h1("My Shiny App")),
        sidebarLayout(
                sidebarPanel(
                        h3("Input Values"),
                        p("Input your name: "),
                        textInput("text1", label="Name",value="you"),
                        br(),
                        p("input your age: "),
                        textInput("num1", label="age",value=""),
                        br()
                ),   
                mainPanel(
                        h1("Ahoyyy, "),
                        textOutput("name"),            
                        textOutput("message")
                )
        )
))
