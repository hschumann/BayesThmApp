## ui.R
## the user interface for the 
## Bayesian Statistics applet

shinyUI(fluidPage(
  ## App Title
  headerPanel("Bayes' Theorem Demonstration for Binary Events"),
  sidebarPanel(
    ## slider input to decide the conditional prob. of B given A
    numericInput("probBA",
                 "Pr(B|A) -- choose a value between .0001 and 1",
                 min = .0001,
                 max = 1,
                 value = .50),
    ## slider input to decide the conditional prob. of B given not A
    numericInput("falsepos", 
                 ("Pr(B|~A) -- false positive rate choose a value between .0001 and 1"), 
                 min = .0001,
                 max = 1,
                 value = .50)
  ),
  mainPanel(
    #h5("Bayes' Rule"),
    #br(),
    #img(src = 'bayesRule.jpg'),
    plotOutput('plot2'),
    h6("Made by Hans Schumann")
  )
  
))




