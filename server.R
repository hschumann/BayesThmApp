## server.R
## this is the background for the
## Bayesian statistics applet

library(shiny)

shinyServer(function(input,output) {
  ## this prodices the plot for the output
  output$plot2 <- renderPlot({
    ## initialize a vector for Pr(A) -- will be the x-axis
    probA <- seq(.001,.999,by = .002)
    num <- input$probBA * probA  ## the numerator of the equation
    probB <- num + (input$falsepos)*(1-probA)  ## the denomenator of the equation
    ## calculate Pr(A|B) -- result is a vector
    y <- num / probB
    ## create the plot (mar sets the window size so that labels all fit in display)
    mar.default <- c(5,4,4,2) + 0.1
    par(mar = mar.default + c(0, 0, 0, 4))
    plot(y ~ probA,xlab = "Pr(A)",ylab = "Pr(A|B)",main = "Pr(A|B) vs. Pr(A)",
         pch = 16, col = "mediumorchid",ylim = c(0,1))
  })
})


