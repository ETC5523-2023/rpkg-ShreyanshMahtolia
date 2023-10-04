
#### Data

This data shows the historical data about women's earnings and employment status, as well as detailed information about specific occupation and earnings from 2013-2016.
The data source is from the Bureau of Labor Statistics and the Census Bureau accessed from <https://www.census.gov/data/tables/time-series/demo/industry-occupation/median-earnings.html> 


#### Purpose

The purpose of the app is to:

1. Show how the Women's Earnings have fared over the years for various age groups,
2. show how Women's Employment is with comparison with Males, and 
3. Explore whether Occupation plays a role in the above mentioned points. 

The data showed positive correlations of earnings for females. However the employment resulted in the polar opposite and the occupation ended up being depending on what the user selected. The app used interactive components to see how the earnings and employment were affected throughout the years whereas, the choice of occupation greatly played a role in determining whether males or females were the eventually winners. 

#### Creator

Shreyansh Mahtolia (smah0071@student.monash.edu)

<details>
<summary>Session information</summary>

```
## ─ Session info ────────────────────────────────────────────────────────────────────────────────────────────────────────
##  setting  value
##  version  R version 4.2.2 (2022-10-31 ucrt)
##  os       Windows 10 x64 (build 22621)
##  system   x86_64, mingw32
##  ui       RStudio
##  language (EN)
##  collate  English_Indonesia.utf8
##  ctype    English_Indonesia.utf8
##  tz       Australia/Sydney
##  date     2023-10-03
##  rstudio  2022.12.0+353 Elsbeth Geranium (desktop)
##  pandoc   2.19.2 @ C:/Program Files/RStudio/resources/app/bin/quarto/bin/tools/ (via rmarkdown)
## 
## ─ Packages ────────────────────────────────────────────────────────────────────────────────────────────────────────────
##  ! package        * version    date (UTC) lib source
##    abind            1.4-5      2016-07-21 [1] CRAN (R 4.2.0)
##    backports        1.4.1      2021-12-13 [1] CRAN (R 4.2.0)
##    bit              4.0.5      2022-11-15 [1] CRAN (R 4.2.2)
##    bit64            4.0.5      2020-08-30 [1] CRAN (R 4.2.2)
##    brio             1.1.3      2021-11-30 [1] CRAN (R 4.2.3)
##    broom            1.0.5      2023-06-09 [1] CRAN (R 4.2.3)
##    bslib            0.4.2      2022-12-16 [1] CRAN (R 4.2.2)
##    cachem           1.0.7      2023-02-24 [1] CRAN (R 4.2.2)
##    callr            3.7.3      2022-11-02 [1] CRAN (R 4.2.2)
##    car              3.1-2      2023-03-30 [1] CRAN (R 4.2.3)
##    carData          3.0-5      2022-01-06 [1] CRAN (R 4.2.3)
##    cli              3.6.0      2023-01-09 [1] CRAN (R 4.2.2)
##    colorspace       2.1-0      2023-01-23 [1] CRAN (R 4.2.3)
##    commonmark       1.8.1      2022-10-14 [1] CRAN (R 4.2.2)
##    crayon           1.5.2      2022-09-29 [1] CRAN (R 4.2.2)
##    crosstalk        1.2.0      2021-11-04 [1] CRAN (R 4.2.3)
##    curl             5.0.0      2023-01-12 [1] CRAN (R 4.2.2)
##    data.table       1.14.8     2023-02-17 [1] CRAN (R 4.2.2)
##    desc             1.4.2      2022-09-08 [1] CRAN (R 4.2.3)
##    devtools         2.4.5      2022-10-11 [1] CRAN (R 4.2.3)
##    digest           0.6.31     2022-12-11 [1] CRAN (R 4.2.2)
##    dplyr          * 1.1.2      2023-04-20 [1] CRAN (R 4.2.3)
##    ellipsis         0.3.2      2021-04-29 [1] CRAN (R 4.2.2)
##    evaluate         0.20       2023-01-17 [1] CRAN (R 4.2.2)
##    fansi            1.0.4      2023-01-22 [1] CRAN (R 4.2.2)
##    farver           2.1.1      2022-07-06 [1] CRAN (R 4.2.2)
##    fastmap          1.1.1      2023-02-24 [1] CRAN (R 4.2.2)
##    forcats        * 1.0.0      2023-01-29 [1] CRAN (R 4.2.3)
##    fs               1.6.2      2023-04-25 [1] CRAN (R 4.2.3)
##    generics         0.1.3      2022-07-05 [1] CRAN (R 4.2.2)
##    ggplot2        * 3.4.1      2023-02-10 [1] CRAN (R 4.2.2)
##    ggpubr           0.6.0      2023-02-10 [1] CRAN (R 4.2.3)
##    ggsignif         0.6.4      2022-10-13 [1] CRAN (R 4.2.3)
##    glue             1.6.2      2022-02-24 [1] CRAN (R 4.2.2)
##    gtable           0.3.1      2022-09-01 [1] CRAN (R 4.2.2)
##    hms              1.1.3      2023-03-21 [1] CRAN (R 4.2.3)
##    htmltools        0.5.5      2023-03-23 [1] CRAN (R 4.2.3)
##    htmlwidgets      1.6.2      2023-03-17 [1] CRAN (R 4.2.3)
##    httpuv           1.6.9      2023-02-14 [1] CRAN (R 4.2.3)
##    httr             1.4.7      2023-08-15 [1] CRAN (R 4.2.3)
##    jquerylib        0.1.4      2021-04-26 [1] CRAN (R 4.2.2)
##    jsonlite         1.8.7      2023-06-29 [1] CRAN (R 4.2.3)
##    knitr            1.42       2023-01-25 [1] CRAN (R 4.2.2)
##    labeling         0.4.2      2020-10-20 [1] CRAN (R 4.2.0)
##    later            1.3.0      2021-08-18 [1] CRAN (R 4.2.3)
##    lazyeval         0.2.2      2019-03-15 [1] CRAN (R 4.2.3)
##    lifecycle        1.0.3      2022-10-07 [1] CRAN (R 4.2.2)
##    lubridate      * 1.9.2      2023-02-10 [1] CRAN (R 4.2.3)
##    magrittr         2.0.3      2022-03-30 [1] CRAN (R 4.2.2)
##    markdown         1.5        2023-01-31 [1] CRAN (R 4.2.2)
##    memoise          2.0.1      2021-11-26 [1] CRAN (R 4.2.2)
##    mime             0.12       2021-09-28 [1] CRAN (R 4.2.0)
##    miniUI           0.1.1.1    2018-05-18 [1] CRAN (R 4.2.2)
##    munsell          0.5.0      2018-06-12 [1] CRAN (R 4.2.2)
##    pillar           1.9.0      2023-03-22 [1] CRAN (R 4.2.3)
##    pkgbuild         1.4.2      2023-06-26 [1] CRAN (R 4.2.3)
##    pkgconfig        2.0.3      2019-09-22 [1] CRAN (R 4.2.2)
##    pkgdown          2.0.7      2022-12-14 [1] CRAN (R 4.2.3)
##    pkgload          1.3.2      2022-11-16 [1] CRAN (R 4.2.3)
##    plotly         * 4.10.2     2023-06-03 [1] CRAN (R 4.2.3)
##    prettyunits      1.1.1      2020-01-24 [1] CRAN (R 4.2.2)
##    processx         3.8.0      2022-10-26 [1] CRAN (R 4.2.2)
##    profvis          0.3.8      2023-05-02 [1] CRAN (R 4.2.3)
##    promises         1.2.0.1    2021-02-11 [1] CRAN (R 4.2.3)
##    ps               1.7.2      2022-10-26 [1] CRAN (R 4.2.2)
##    purrr          * 1.0.1      2023-01-10 [1] CRAN (R 4.2.2)
##    R6               2.5.1      2021-08-19 [1] CRAN (R 4.2.2)
##    ragg             1.2.5      2023-01-12 [1] CRAN (R 4.2.2)
##    rcmdcheck        1.4.0      2021-09-27 [1] CRAN (R 4.2.3)
##    Rcpp             1.0.10     2023-01-22 [1] CRAN (R 4.2.2)
##    readr          * 2.1.4      2023-02-10 [1] CRAN (R 4.2.2)
##    remotes          2.4.2.1    2023-07-18 [1] CRAN (R 4.2.3)
##    rlang            1.1.0      2023-03-14 [1] CRAN (R 4.2.3)
##    rmarkdown        2.21       2023-03-26 [1] CRAN (R 4.2.3)
##    roxygen2         7.2.3      2022-12-08 [1] CRAN (R 4.2.3)
##    rprojroot        2.0.3      2022-04-02 [1] CRAN (R 4.2.2)
##    rsconnect        1.0.1      2023-07-20 [1] CRAN (R 4.2.2)
##    rstatix          0.7.2      2023-02-01 [1] CRAN (R 4.2.3)
##    rstudioapi       0.14       2022-08-22 [1] CRAN (R 4.2.2)
##    sass             0.4.5      2023-01-24 [1] CRAN (R 4.2.2)
##    scales           1.2.1      2022-08-20 [1] CRAN (R 4.2.2)
##    sessioninfo      1.2.2      2021-12-06 [1] CRAN (R 4.2.3)
##    shiny          * 1.7.4      2022-12-15 [1] CRAN (R 4.2.3)
##    shinythemes    * 1.2.0      2021-01-25 [1] CRAN (R 4.2.3)
##    stringi          1.7.12     2023-01-11 [1] CRAN (R 4.2.2)
##    stringr        * 1.5.0      2022-12-02 [1] CRAN (R 4.2.2)
##    systemfonts      1.0.4      2022-02-11 [1] CRAN (R 4.2.2)
##    testthat         3.1.8      2023-05-04 [1] CRAN (R 4.2.3)
##    textshaping      0.3.6      2021-10-13 [1] CRAN (R 4.2.2)
##    tibble         * 3.2.1      2023-03-20 [1] CRAN (R 4.2.3)
##    tidyr          * 1.3.0      2023-01-24 [1] CRAN (R 4.2.2)
##    tidyselect       1.2.0      2022-10-10 [1] CRAN (R 4.2.2)
##    tidyverse      * 2.0.0      2023-02-22 [1] CRAN (R 4.2.3)
##    timechange       0.2.0      2023-01-11 [1] CRAN (R 4.2.2)
##    tzdb             0.3.0      2022-03-28 [1] CRAN (R 4.2.2)
##    urlchecker       1.0.1      2021-11-30 [1] CRAN (R 4.2.3)
##    usethis          2.2.2      2023-07-06 [1] CRAN (R 4.2.3)
##    utf8             1.2.3      2023-01-31 [1] CRAN (R 4.2.2)
##    vctrs            0.6.2      2023-04-19 [1] CRAN (R 4.2.3)
##    viridisLite      0.4.1      2022-08-22 [1] CRAN (R 4.2.2)
##    vroom            1.6.1      2023-01-22 [1] CRAN (R 4.2.2)
##    whisker          0.4.1      2022-12-05 [1] CRAN (R 4.2.3)
##    withr            2.5.0      2022-03-03 [1] CRAN (R 4.2.2)
##  P WomInWorkShiny * 0.0.0.9000 2023-10-01 [?] load_all()
##    xfun             0.37       2023-01-31 [1] CRAN (R 4.2.2)
##    xml2             1.3.5      2023-07-06 [1] CRAN (R 4.2.3)
##    xopen            1.0.0      2018-09-17 [1] CRAN (R 4.2.3)
##    xtable           1.8-4      2019-04-21 [1] CRAN (R 4.2.3)
##    yaml             2.3.7      2023-01-23 [1] CRAN (R 4.2.2)
## 
##  [1] C:/Users/markm/AppData/Local/R/win-library/4.2
##  [2] C:/Program Files/R/R-4.2.2/library
## 
##  P ── Loaded and on-disk path mismatch.
## 
## ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
```
</details>
