
<!-- README.md is generated from README.Rmd. Please edit that file -->
nbadata
=======

This package contains NBA data that can be used for analysis and playing Daily Fantasy Sports. It currently consists of the following data tables:

-   `nbafpts`: player fantasy points for each game in the 2017-2018 NBA season

Installation
------------

You can install the most current version of nbadata from [GitHub](https://github.com/dfs-with-r/nbadata) with:

``` r
devtools::install_github("dfs-with-r/nbadata")
```

Example
-------

Load a data frame of fantasy points from the 2017-2018 NBA season.

``` r
library(nbadata)
nbafpts
#> # A tibble: 26,109 x 7
#>    game_date  team  player_name          pos     mpg fpts_dk fpts_fd
#>    <date>     <chr> <chr>                <chr> <int>   <dbl>   <dbl>
#>  1 2017-10-17 BOS   Jaylen Brown         F        40   38       38.2
#>  2 2017-10-17 BOS   Kyrie Irving         PG       39   50.5     48.8
#>  3 2017-10-17 BOS   Jayson Tatum         SF       37   32.5     29.5
#>  4 2017-10-17 BOS   Al Horford           C        32   27.2     27.9
#>  5 2017-10-17 BOS   Gordon Hayward       SF        5    3.25     3.2
#>  6 2017-10-17 BOS   Marcus Smart         PG       35   34.8     37.3
#>  7 2017-10-17 BOS   Terry Rozier         PG       20   22.2     24.6
#>  8 2017-10-17 BOS   Aron Baynes          C        19   14.8     14.5
#>  9 2017-10-17 BOS   Jesusemilore Ojeleye PF        9    0        0  
#> 10 2017-10-17 BOS   DeShane Larkin       PG        5    1.25     1.2
#> # ... with 26,099 more rows
```
