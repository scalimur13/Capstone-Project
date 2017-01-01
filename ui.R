### Data Science Capstone : Course Final Project
### ui.R file for the Shiny app
### Github repo : https://github.com/scalimur13/Capstone-Project

suppressWarnings(library(shiny))
suppressWarnings(library(markdown))
shinyUI(navbarPage("Coursera Data Science Capstone: Course Final Project",
                   tabPanel("App for predictive a Word for a phrase or Word wrote",
                            HTML("<strong>Joel Calixto Murcia for Coursera Data Science Capstone</strong>"),
                            h4("John Hopkins University", style="color:blue"),
                            br(),
                            HTML("<strong>Date: 31 December 2016</strong>"),
                            br(),
                            
                            sidebarLayout(
                              sidebarPanel(
                                helpText("Please enter a Word or sentence for make a prediction"),
                                textInput("inputString", "Put your sentence here",value = ""),
                                br(),
                                br()
                              ),
                              mainPanel(
                                h2("Prediction"),
                                verbatimTextOutput("Prediction")
                              )
                            )
                            
                   ),
                   tabPanel("About this",
                            mainPanel(
                              helpText("The application is the capstone project for the Coursera Data Science specialization provided for professors of the Johns Hopkins University"),
                              helpText("The main goal is to build a shiny App for to show the comprension of concepts of this course "),
                              helpText("In this app we try to predictive a word of a sentence digited in text box"),
                              helpText("The database of text was converted in Rdata files for optimize a load of data in this App"),
                              helpText("In this app we show the five words more representative for the prediction"),
                              helpText("The source code of this App can be found in https://github.com/scalimur13/Capstone-Project")
                            )
                   )
)
)