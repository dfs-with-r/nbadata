
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
head(nbafpts)
#>    game_date team    player_name mpg fpts_dk fpts_fd
#> 1 2017-10-17  BOS   Jaylen Brown  40   38.00    38.2
#> 2 2017-10-17  BOS   Kyrie Irving  39   50.50    48.8
#> 3 2017-10-17  BOS   Jayson Tatum  37   32.50    29.5
#> 4 2017-10-17  BOS     Al Horford  32   27.25    27.9
#> 5 2017-10-17  BOS Gordon Hayward   5    3.25     3.2
#> 6 2017-10-17  BOS   Marcus Smart  35   34.75    37.3
```
