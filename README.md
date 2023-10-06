# WomInWorkShiny

<!-- badges: start -->
<!-- badges: end -->

The goal of the WomInWorkShiny package is to allow the users to explore the 
data regarding how women fare in the workplace against men in terms of 
earnings, employment rate and amount of workforce present. The data is recorded
for the country of US for various years provided by the tidytuesday repository
on GitHub. 

The package contains tibbles for each of the factors that could be taken into
account for comparison between the two genders such as total  female earnings,
employment rate by job type, and workforce and earnings by occupation for both
genders.

The package also contains a function to find out the roots of a quadratic 
equation and return them depending on the type of roots discovered by calculating
the discriminant.

The package also consists of a graphical function which displays a line chart
depending on the age group entered by the user.

To help with the user to enter valid age groups in the previous function, the 
package also consists of a vector with all available age groups to help the 
user enter a choice that will return the line chart as the output.

Finally, the package contains a function to launch an inbuilt shiny app to 
showcase about 'Women In The Workplace' which can help users gain insights about
the data via visualizations as well as interact with them.

### Installation

One can install the package from the following GitHub link:
[WomInWorkShiny](https://github.com/ETC5523-2023/rpkg-ShreyanshMahtolia)

In R:

```r
install.packages("WomInWorkShiny")
```

### Examples

The following code can be used to load in the package:

```r
library(WomInWorkShiny)
```

The following code allows the user to look inside the earnings dataset:

```r
head(earnings_female)
# A tibble: 6 × 3
   Year Age_Group                 percent
  <dbl> <chr>                       <dbl>
1  1979 Total, 16 years and older    62.3
2  1980 Total, 16 years and older    64.2
3  1981 Total, 16 years and older    64.4
4  1982 Total, 16 years and older    65.7
5  1983 Total, 16 years and older    66.5
6  1984 Total, 16 years and older    67.6
```

The following function returns the roots of a quadratic equation:

```r
quadratic(1,5,6)
# A tibble: 2 × 2
  Roots Root_Type      
  <dbl> <chr>          
1    -2 Real & Distinct
2    -3 Real & Distinct
```

The following function launches the inbuilt shiny app titled 'Women In The 
Workplace':

```r
run_app()
```

The following function displays a line plot for female earnings throughout 
the years based on the age group entered by the user:

```r
earningsplot("16-19 years")
```

The following vector consists of all the available age groups in the female
earnings dataset to aid the user in entering a valid age group:

```r
age_groups
[1] "Total, 16 years and older" "16-19 years"               "20-24 years"               "25-34 years"              
[5] "35-44 years"               "45-54 years"               "55-64 years"               "65 years and older"  
```
