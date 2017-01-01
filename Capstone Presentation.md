Capstone Data Science Presentation
========================================================
author: Joel Calixto Murcia
date: Sat Dec 31 21:03:06 2016
autosize: true

Goals of Project
========================================================

The main Goal is make a model for text predictive with a App in Shiny.

The text was recollected of twitter, blogs and news of English language.


Getting and Cleaning Data
========================================================

We have three original files named above (blogs, twitter, news) and with this generate only one.

with this file to process for clean data, strip space, remove punctuations data and to lowercase characters.

Then we proceded to create three objects for n-grams characters.

The last step generate files for each object for save time of process and optimize app.


Prediction Model 
========================================================

Load data files that save in steps above for optimize time.
For each word input in text box clean data and avoid punctuations.

Check the quadgram taken the 3 last characters for compare, if found word then take this work (like first comparising).
Second if quadgram not found then take the 2 last characters of trigram for compare, if found word then take this work.
Third if trigram not found then take the 1 last character of bigram for compare, if found word then take this work.
Else then return "default" word.



Shiny App
========================================================

The final app was created for show top five prediction words.

Below attach a preview of Shiny Application.

</span><img src="./Capstone Presentation-figure/capstone.png"></img>

The source code can be found in 

github https://github.com/scalimur13/Capstone-Project

shiny  https://scalimur.shinyapps.io/coursera_capstone_data_science/



