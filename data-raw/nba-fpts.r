library(readr)
library(dplyr)

nba_orig <- read_csv("data-raw/2017-18_playerBoxScore.csv")

gte10 <- function(x) x >= 10

nbafpts <- nba_orig %>%
  select(
    game_date = gmDate,
    team = teamAbbr,
    player_fn = playFNm,
    player_ln = playLNm,
    mpg = playMin,
    pos = playPos,
    pts = playPTS,
    reb = playTRB,
    ast = playAST,
    stl = playSTL,
    blk = playBLK,
    tov = playTO,
    made3p = play3PM) %>%
  mutate(
    player_name = paste(player_fn, player_ln),
    num_gte = gte10(pts) + gte10(reb) + gte10(ast) + gte10(stl) + gte10(blk),
    is_dd = num_gte == 2,
    is_td = num_gte == 3,
    fpts_dk = pts + 1.25*reb + 1.5*ast + 2*stl + 2*blk - 0.5*tov + 0.5*made3p + 1.5*is_dd + 3*is_td,
    fpts_fd = pts + 1.20*reb + 1.5*ast + 3*stl + 3*blk - 1.0*tov
  ) %>%
  select(
    game_date, team, player_name, pos, mpg, fpts_dk, fpts_fd
  )

usethis::use_data(nbafpts, overwrite = TRUE)

