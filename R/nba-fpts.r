#' Fantasy Points from Boxscores
#'
#' Fantasy points for every game in the 2017-2018 NBA season. Calculated from boxscore data.
#'
#' @source \url{https://www.kaggle.com/pablote/nba-enhanced-stats}
#' @format Data frame with columns
#' \describe{
#' \item{game_date}{Date game played}
#' \item{team}{Team three-letter abbreviation}
#' \item{player_name}{Player first and last name}
#' \item{mpg}{Minutes per game}
#' \item{fpts_dk}{DraftKings fantasy points}
#' \item{fpts_fd}{FanDuel fantasy points}
#' }
#' @examples
#'   nbafpts
"nbafpts"
