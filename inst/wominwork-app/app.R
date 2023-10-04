library(shiny)
library(shinythemes)
library(plotly)
library(dplyr)
library(WomInWorkShiny)


ui <- fluidPage(
  theme = shinytheme("darkly"),
  titlePanel("Women In The Workplace - (The Future is Female!)"),
  tabsetPanel(
    tabPanel(
      "About",
      titlePanel(h3("Brief Overview of The Data And App")),
      sidebarLayout(mainPanel(fluidRow(column(
        12,
        div(class = "about",
            uiOutput('about'))
      ))),

      sidebarPanel(
        img(
          src = "https://media.giphy.com/media/RSpMuO8OAjwU3FGga6/giphy.gif",
          width = "350px",
          height = "370px"
        )
      ))

    ),

    tabPanel(
      "Earnings",
      titlePanel(h3("Women's Earnings Throughout The Years")),
      sidebarLayout(
        mainPanel(plotOutput("Vis1", height = 540),
                  style = "width: 60%;",),
        sidebarPanel(fluidRow(column(
          width = 6,
          sliderInput(
            inputId = "Slider1",
            label = "Choose The Year Range",
            min = min(earnings_female$Year),
            max = max(earnings_female$Year),
            value = c(min(earnings_female$Year), max(earnings_female$Year)),
            step = 1
          ),
          column(
            width = 6,
            checkboxGroupInput(
              "ChkGrp",
              "Select The Earnings Group:",
              choices = c(unique(earnings_female$Age_Group)),
              selected = "16-19 years"
            )
          ),

        )),
        style = "width: 160%;")


      ),
      textOutput("text1"),
      textOutput("text2"),
      textOutput("text3")
    ),

    tabPanel(
      "Employment",
      titlePanel(h3(
        "Employment Rate Comparison Between Males and Females"
      )),
      sidebarLayout(mainPanel(plotlyOutput("Vis2", height = 600)),
                    sidebarPanel(
                      sliderInput(
                        inputId = "Slider2",
                        label = "Select The Year",
                        min = min(employed_gender$year),
                        max = max(employed_gender$year),
                        value = c(1990, 2010),
                        step = 1
                      )
                    )),
      textOutput("text4"),
      textOutput("text5")
    ),

    tabPanel(
      "Occupation(Workforce)",
      titlePanel(h3(
        "How Jobs Affect The Workforce For Each Gender"
      )),
      fluidRow(column(
        width = 6,
        sliderInput(
          inputId = "Slider3",
          label = "Select The Year",
          min = min(jobs_gender$year),
          max = max(jobs_gender$year),
          value = 2013,
          step = 1
        )
      ),
      column(
        width = 6,
        selectInput(
          inputId = "SelInput1",
          label = "Choose The Job Category",
          choices = c(unique(jobs_gender$minor_category)),
          selected = "Legal"
        )
      )),
      fluidRow(
        column(width = 6, plotlyOutput(
          "Vis3", height = 500, width = 700
        )),
        column(width = 6 , plotlyOutput(
          "Vis4", height = 500, width = 700
        ))
      ),
      textOutput("text6"),
      textOutput("text7")
    ),

    tabPanel(
      "Occupation(Earnings)",
      titlePanel(h3(
        "How Jobs Affect The Earnings For Each Gender"
      )),
      fluidRow(column(
        width = 6,
        sliderInput(
          inputId = "Slider4",
          label = "Select The Year",
          min = min(jobs_gender$year),
          max = max(jobs_gender$year),
          value = 2013,
          step = 1
        )
      ),
      column(
        width = 6,
        selectInput(
          inputId = "SelInput2",
          label = "Choose The Job Category",
          choices = c(unique(jobs_gender$minor_category)),
          selected = "Legal"
        )
      )),
      fluidRow(
        column(width = 6, plotlyOutput(
          "Vis5", height = 500, width = 700
        )),
        column(width = 6 , plotlyOutput(
          "Vis6", height = 500, width = 700
        ))
      ),
      textOutput("text8"),
      textOutput("text9")
    ),
    tabPanel("Finale",
             titlePanel(h3("What Can We Learn?")),
             fluidRow(
               column(
                 width = 3,
                 img(
                   src = "https://i.gifer.com/74pZ.gif",
                   width = "350px",
                   height = "370px"
                 )
               ),
               column(width = 6,
                      textOutput("text10")),
               column(
                 width = 3,

                 img(
                   src = "https://media.giphy.com/media/gmG4bIu3mmM60WJckp/giphy.gif",
                   width = "350px",
                   height = "370px"
                 )
               )
             ))

  ),
  includeCSS("styles.css")
)

server <- function(input, output) {
  output$Vis1 <- renderPlot({
    earnings_female %>%
      filter(Year >= input$Slider1[1] &
               Year <= input$Slider1[2]) %>%
      filter(Age_Group %in% c(input$ChkGrp)) %>%
      ggplot(aes(x = Year, y = percent, color = Age_Group)) +
      geom_line() +
      labs(x = "Year", y = "Percentage") +
      labs(title = "Earnings of Various Female Groups From 1979-2011") +
      theme_bw()
  })

  output$text1 <- renderText({
    "This chapter focuses on how much various age groups of female gender earned over the trend from 1979
      until 2011. For most of the age groups, there is a upwards trend which indicates that women have
      been earning more throughout the years; a positive note. Another observation that can be inferred is
      that the greater the age group, the less percentage of earnings is made."
  })

  output$text3 <- renderText({
    "User Guide: To make use of the interactive elements, make use of the slider to freely change the
      range of year selection by using the slider provided. To add more visibility in the line-chart, one
      can make use of the checkboxes to select/deselect the age groups as required."
  })

  output$text2 <- renderText({
    "Despite the fact that we can see that women are clearly earning more throughout the years, why is it
      that this topic is always brought up about women being inferior to men? Why do we need to focus on
      comparing men and women in any debate or topic brought up? This is why this chapter is just a piece of
      the puzzle where we only experienced trends of 1 variable, females. Which is why the next chapter
      shall focus on how women fare against men in the workplace."
  })

  output$text4 <- renderText({
    "Continuing from the previous section, we now dive deeper and compare females against males and now we can
      truly see disparities and reasons for stress regarding this topic. For full-time jobs, more males are employed
      as compared to females. However in a bizarre turn of events, in part-time jobs it's the polar opposite where
      females are hired more than males."
  })

  output$text5 <- renderText({
    "User Guide: To make use of the interactive elements in this section, once again make use of the slider
      to freely change the year according to one's choice. The other interactive element is within the plot itself
      where one can click on the legends to select/deselect the Job_types they wish to see on the plot. Finally, the user
      can use their mouse to hover over the bars to gain addtional information."
  })

  output$text6 <- renderText({
    "So we now know the female earnings are gradually increasing, but are contradicted by the fact that males have
      a higher employment rate. This lets us assume that there could be some other factors that could influence both
      factors. One of the most common assumptions made by humans is that there are som jobs that only certain genders
      are more capable in. For example, there would be more female waitresses or perhaps more male mechanics. This section
      tests these hypothesis and shows how the workforce is affected by the type of job occupation."
  })

  output$text7 <- renderText({
    "User Guide: To make use of the interactive elements in this section, make use of the slider
      to freely change the year according to one's choice. The other interactive element is a dropdown selection
      where one can choose the job field they wish to see. Next, an interactive element is within the plot itself
      where one can click on the legends to select/deselect the Job_types they wish to see on the plot. Finally, the user
      can hover over the pie's to view addtional information."
  })

  output$text8 <- renderText({
    "This is the second part analysis of how Job Occupancy affects both females and males. We make use
      of the second factor in question, 'Earnings'. Here we arrive at another ambiguous stalemate where depending on
      the occupation selected, the earnings are more for either males or females."
  })

  output$text9 <- renderText({
    "User Guide: To make use of the interactive elements in this section, make use of the slider
      to freely change the year according to one's choice. The other interactive element is a dropdown selection
      where one can choose the job field they wish to see. Next interactive element is within the plot itself
      where one can click on the legends to select/deselect the Job_types they wish to see on the plot. Finally, the user
      can hover over the pie's to view additional information."
  })

  output$text10 <- renderText({
    "After gaining massive amounts of insightful information about how women fare in the workplace, what can
      we make of it? Well, on one hand we can confidently say that women are moving up in the society by getting
      higher paid jobs and/or salaries which is a positive note. However, on the other hand the employment rate begs to
      differ and show that males are preferred over females. Finally, we get another conclusion throughout job field
      that the gender ratio is highly influenced by the occupancy and hence difficult to pinpoint a conlusion from it.
      This is where the most important and determining factor comes into picture.....that is 'YOU!'. Anything in life
      is based on the perspective of how an individual analyzes events in nature. This principle applies here as well and
      one should not only be afraid to express their opinions regarding a topic, but must also respect another individual's
      opinion as they're perhaps analyzing the same topic from another viewpoint."
  })

  output$Vis2 <- renderPlotly({
    employed_gender %>%
      filter(year >= input$Slider2[1] &
               year <= input$Slider2[2]) %>%
      ggplot(aes(x = year, y = Percentage, fill = Job_Type)) +
      geom_bar(stat = "identity", position = "dodge") +
      labs(x = "Year", y = "Employment(%)") +
      labs(title = "Employment Rate From 1968-2016") +
      theme_bw()
  })

  output$Vis3 <- renderPlotly({
    jobs_workforce %>%
      filter(year == input$Slider3,
             minor_category == input$SelInput1,
             Gender == "Male") %>%
      arrange(occupation) %>%
      plot_ly(
        labels = ~ occupation,
        values = ~ Workforce,
        type = "pie"
      ) %>%
      layout(
        title = "Workforce For Males By Job Occupancy",
        xaxis = list(
          showgrid = FALSE,
          zeroline = FALSE,
          showticklabels = FALSE
        ),
        yaxis = list(
          showgrid = FALSE,
          zeroline = FALSE,
          showticklabels = FALSE
        )
      )
  })

  output$Vis4 <- renderPlotly({
    jobs_workforce %>%
      filter(year == input$Slider3,
             minor_category == input$SelInput1,
             Gender == "Female") %>%
      arrange(occupation) %>%
      plot_ly(
        labels = ~ occupation,
        values = ~ Workforce,
        type = "pie"
      ) %>%
      layout(
        title = "Workforce For Females By Job Occupancy",
        xaxis = list(
          showgrid = FALSE,
          zeroline = FALSE,
          showticklabels = FALSE
        ),
        yaxis = list(
          showgrid = FALSE,
          zeroline = FALSE,
          showticklabels = FALSE
        )
      )
  })

  output$Vis5 <- renderPlotly({
    jobs_earnings %>%
      filter(year == input$Slider4,
             minor_category == input$SelInput2,
             Gender == "Male") %>%
      arrange(occupation) %>%
      plot_ly(
        labels = ~ occupation,
        values = ~ Earnings,
        type = "pie"
      ) %>%
      layout(
        title = "Earnings For Males By Job Occupancy",
        xaxis = list(
          showgrid = FALSE,
          zeroline = FALSE,
          showticklabels = FALSE
        ),
        yaxis = list(
          showgrid = FALSE,
          zeroline = FALSE,
          showticklabels = FALSE
        )
      )
  })

  output$Vis6 <- renderPlotly({
    jobs_earnings %>%
      filter(year == input$Slider4,
             minor_category == input$SelInput2,
             Gender == "Female") %>%
      arrange(occupation) %>%
      plot_ly(
        labels = ~ occupation,
        values = ~ Earnings,
        type = "pie"
      ) %>%
      layout(
        title = "Earnings For Females By Job Occupancy",
        xaxis = list(
          showgrid = FALSE,
          zeroline = FALSE,
          showticklabels = FALSE
        ),
        yaxis = list(
          showgrid = FALSE,
          zeroline = FALSE,
          showticklabels = FALSE
        )
      )
  })

  output$about <- renderUI({
    knitr::knit("about.Rmd", quiet = TRUE) %>%
      markdown::markdownToHTML(fragment.only = TRUE) %>%
      HTML()
  })
}

shinyApp(ui = ui, server = server)
