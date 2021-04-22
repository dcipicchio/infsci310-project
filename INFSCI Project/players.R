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

best_older_players <- read.csv("older_csv.csv")

older_mvps <- best_older_players[order(best_older_players$MVPs, decreasing = TRUE),]
older_all_stars <- best_older_players[order(best_older_players$All_Star, decreasing = TRUE),]
older_champs <- best_older_players[order(best_older_players$Titles, decreasing = TRUE),]
older_win_shares <- best_older_players[order(best_older_players$Win_Share, decreasing = TRUE),]

Lebron=c(0,0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
Curry=c(0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
Duncan=c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0)
Bryant=c(0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
Nash=c(0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0)
Giannis=c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0)
Iverson=c(0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0)
Shaq=c(0,1,0,0,0,1,0,0,0,0,0,0,0,1,0,1,0,0,0,0,1,1,0,1,0,0,0,0,0,0)
Westbrook=c(0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1)
Harden=c(0,0,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0)
Garnett=c(0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0)
Kidd=c(0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,0,0,0)
Durant=c(0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0)
Nowitzki=c(0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
Wade=c(0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
Anthony=c(0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,1,1,0,0,0,1,0,0,0,0,0)
Allen=c(0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,1,0,0,0,0,0,0,0,0,0)
Bosh=c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0)
Davis=c(0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0)
Ming=c(0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
Howard=c(1,0,0,1,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1)
Carter=c(1,0,1,0,0,0,1,0,0,0,0,0,0,0,1,0,0,1,0,0,0,1,0,1,0,1,0,1,1,0)
Aldridge=c(0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0)
Irving=c(0,1,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
George=c(0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0)
McGrady=c(1,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,1,0,0)
Lillard=c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0)
Griffin=c(0,0,1,0,0,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
Paul=c(0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,1,0,1,0,0,1,0,0,0,0,0,0)
Lowry=c(0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0)
Gasol=c(0,0,0,0,1,0,0,0,0,0,0,0,0,1,1,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0)
Parker=c(0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0)
Leonard=c(0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0)
Marion=c(0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,1,0,0)
Billups=c(0,1,0,0,0,0,0,1,1,0,0,0,1,0,0,0,0,1,0,1,0,0,0,0,0,0,0,1,0,0)
Ginoblli=c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0)
Wallace=c(1,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1)
Chandler=c(0,0,0,1,1,0,1,0,0,0,1,0,0,1,0,0,0,0,1,1,0,0,0,1,0,0,0,0,0,0)
Terry=c(1,1,1,0,0,0,1,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0)
Hill=c(0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0)
Thompson=c(0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
Iguodala=c(0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0)
Millsap=c(1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0)
Horford=c(1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0)
Stoudemire=c(0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,0,0,0)
Wall=c(0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1)
Walker=c(0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
Rondo=c(1,1,0,0,1,0,1,0,0,0,0,0,1,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0)
Love=c(0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0)
Butler=c(0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,1,0,0,0,0,0,0,0)

bm=matrix(c(Lebron, Curry, Duncan, Bryant, Nash, Giannis, Iverson, Shaq, Westbrook, Harden, Garnett, Kidd, Durant, Nowitzki, Wade, Anthony, Allen, Bosh, Davis, Ming, Howard, Carter, Aldridge, Irving, George, McGrady,Lillard, Griffin, Paul, Lowry, Gasol,Parker, Leonard, Marion, Billups, Ginoblli, Wallace, Chandler, Terry, Hill, Thompson, Iguodala, Millsap, Horford, Stoudemire, Wall, Walker, Rondo, Love, Butler), nrow=50,byrow=TRUE)
dimnames(bm)=list(c("Lebron","Curry","Duncan","Bryant","Nash","Giannis","Iverson","Shaq","Westbrook","Harden","Garnett","Kidd","Durant","Nowitzki","Wade","Anthony","Allen","Bosh","Davis","Ming","Howard","Carter","Aldridge","Irving","George","McGrady","Lillard","Griffin","Paul","Lowry","Gasol","Parker","Leonard","Marion","Billups","Ginoblli","Wallce","Chandler","Terry","Hill","Thompson","Iguodala","Millsap","Horford","Stoudemire","Wall","Walker","Rondo","Love","Butler"),c("Hawks","Celtics","Nets","Hornets","Bulls","Cavs","Mavs","Nuggets","Pistsons","Warriors","Rockets","Pacers","Clippers","Lakers","Grizzlies","Heat","Bucks","Timberwolves","Pelicans","Knicks","Thunder","Magic","76ers","Suns","Trail Blazers","Kings","Spurs","Raptors","Jazz","Wizards"))

bg=graph.incidence(bm)
