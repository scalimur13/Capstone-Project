### Data Science Capstone : Course Final Project
### server.R file for the Shiny app
### Github repo : https://github.com/scalimur13/Capstone-Project

#remove warnings for library of work
suppressWarnings(library(shiny))
suppressWarnings(library(tm))
suppressWarnings(library(stringr))

# Load files optimize for not reprocess in each app load
gram2 <- readRDS("bigram.RData");
gram3 <- readRDS("trigram.RData");
gram4 <- readRDS("quadgram.RData");

# remove punctuation of sentence
Predict <- function(x) {
  cleandata <- removeNumbers(removePunctuation(tolower(x)))
  data_proces <- strsplit(cleandata, " ")[[1]]
  
 #check algorithm
 #first check the quadgram taken the 3 last characters for compare, if found word then take this work
 #second if quadgram not found then take the 2 last characters of trigram for compare, if found word then take this work
 #third if trigram not found then take the 1 last character of bigram for compare, if found word then take this work
 #else then return "default" word
  
  if (length(data_proces)>= 3) {data_proces <- tail(data_proces,3)
    if (identical(character(0),head(gram4[gram4$unigram == data_proces[1] & 
                                    gram4$bigram == data_proces[2] & 
                                    gram4$trigram == data_proces[3], 4],5))){
      Predict(paste(data_proces[2],data_proces[3],sep=" "))
    } else {head(gram4[gram4$unigram == data_proces[1] & 
                       gram4$bigram == data_proces[2] &
                       gram4$trigram == data_proces[3], 4],5)}
  }
  else if (length(data_proces) == 2){data_proces <- tail(data_proces,2)
    if (identical(character(0),head(gram3[gram3$unigram == data_proces[1] &
                                          gram3$bigram == data_proces[2], 3],5))) {
      Predict(data_proces[2])
    } else {head(gram3[gram3$unigram == data_proces[1] & 
                       gram3$bigram == data_proces[2], 3],5)}
  }
  else if (length(data_proces) == 1){data_proces <- tail(data_proces,1)
    if (identical(character(0),head(gram2[gram2$unigram == data_proces[1], 2],5))) {head("default",1)}
    else {head(gram2[gram2$unigram == data_proces[1],2],5)}
  }
}

shinyServer(function(input, output) {
    output$Prediction <- renderPrint({
    result <- Predict(input$inputString)
    result
  });
  }
 )