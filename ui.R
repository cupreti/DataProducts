shinyUI(fluidPage(
  titlePanel("Mtcars plot Demonstration"),
  sidebarLayout(
    sidebarPanel( "Plot Designer",
                  selectInput('element_id', label = 'Select one option', choices = c('mtcars','mpg')),
                  textInput('colid', label = 'Enter theme color. Example red',value='black'),
                  actionButton("goButton", "Show plot")),
    mainPanel("Plot Screen", 
              h1('Mtcars and Miles per Gallon Plot'), 
              p('This plot is with respect to the '),
              p(textOutput("mtcarsid")),
              p(textOutput('dynamicText')),
              plotOutput('dynamicPlot'),
              h5('Please note that the application will display message "Error:invalid color code" if color field is not blank or invalid color name,
                   Once you correct it application will display the plot corectly'))
  )
))