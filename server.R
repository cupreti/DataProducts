data("mtcars")

plotchoices <- function(option) {
  obj <- "mtcars";
  if(option == "mtcars")
  {
    obj <- mtcars
  } else if(option == "mpg") {
    obj <- mtcars$mpg
  }
  obj
}

colorCode <- function(c){
  color = "black"
  if(c!=null)
    color <- c
  color
}
 
shinyServer(function(input, output) {
  observeEvent(input$goButton,{
      
     rp()
  })
  
  
  
  rp <- eventReactive(input$goButton,{
        output$mtcarsid <- renderText({input$element_id})
        output$dynamicPlot <- renderPlot({
       
      plot(plotchoices(input$element_id),col = ifelse(input$colid !="",input$colid,"black"))
       
    })
  })
   
})