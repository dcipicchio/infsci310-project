players_10s <- seasons_players(seasons = 2010:2021)

players_80s <- seasons_players(1979:1990)

players_10s_names = unique(players_10s$namePlayer)
write.table(players_10s_names, "nbatest.txt", sep=", ")


players_80s_names = unique(players_80s$namePlayer)
write.table(players_80s_names, "nba80s.txt", sep=", ")

best_modern_players <- read.csv("modern_csv.csv")
modern_mvps <- best_modern_players[order(best_modern_players$MVPs, decreasing = TRUE),]
moder_all_stars <- best_modern_players[order(best_modern_players$All_Star, decreasing = TRUE),]
modern_champs <- best_modern_players[order(best_modern_players$Titles, decreasing = TRUE),]
modern_win_shares <- best_modern_players[order(best_modern_players$Win_Shares, decreasing = TRUE),]



