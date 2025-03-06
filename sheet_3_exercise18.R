# Creating a data frame for the National League
national_league <- data.frame(
  HomeTeam = c("Bern", "Davos", "Fribourg", "Lausanne", "Lugano", "Rapperswil-Jona", "Servette", "Ajoie", "Ambri-Piotta",
               "Biel", "EHCKloten", "LangnauTigers", "Zug", "Zurich", "Davos", "Lausanne", "Zug", "Zurich", "Lausanne",
               "Bern"),
  AwayTeam = c("Zurich", "EHCKloten", "LangnauTigers", "Zug", "Biel", "Ambri-Piotta", "Ajoie", "Fribourg", "Lugano",
               "Lausanne", "Rapperswil-Jona", "Bern", "Servette", "Davos", "Ambri-Piotta", "Rapperswil-Jona", "Fribourg",
               "Zug", "Ambri-Piotta", "Ajoie"),
  HomeScore = c(4, 1, 6, 0, 5, 7, 3, 0, 2, 8, 3, 1, 6, 4, 2, 3, 4, 3, 3, 2),
  AwayScore = c(1, 4, 0, 5, 6, 4, 2, 4, 4, 1, 2, 3, 1, 1, 3, 2, 2, 2, 2, 3)
)

# Creating a data frame for the Swiss League
swiss_league <- data.frame(
  HomeTeam = c("Thurgau", "Basel", "GCKLions", "LaChaux-de-Fonds", "Olten", "Visp", "Thurgau", "Langenthal",
               "Basel", "Sierre", "GCKLions", "LaChaux-de-Fonds", "Visp", "Olten", "Thurgau", "Langenthal",
               "Basel", "Sierre", "GCKLions", "LaChaux-de-Fonds"),
  AwayTeam = c("Visp", "GCKLions", "Basel", "Sierre", "Langenthal", "Thurgau", "Visp", "Olten", "GCKLions",
               "LaChaux-de-Fonds", "Basel", "Sierre", "Thurgau", "Langenthal", "Visp", "Olten", "GCKLions",
               "LaChaux-de-Fonds", "Basel", "Sierre"),
  HomeScore = c(5, 4, 4, 9, 5, 5, 2, 2, 3, 4, 1, 8, 5, 4, 1, 2, 6, 1, 3, 5),
  AwayScore = c(0, 5, 3, 5, 2, 1, 1, 5, 4, 2, 2, 2, 2, 1, 4, 3, 1, 2, 1, 2)
)


# Compute score difference and total points
national_league$ScoreDiff <- national_league$HomeScore - national_league$AwayScore
national_league$TotalPoints <- national_league$HomeScore + national_league$AwayScore

swiss_league$ScoreDiff <- swiss_league$HomeScore - swiss_league$AwayScore
swiss_league$TotalPoints <- swiss_league$HomeScore + swiss_league$AwayScore

# Summary statistics
national_stats <- summary(national_league[, c("ScoreDiff", "TotalPoints")])
swiss_stats <- summary(swiss_league[, c("ScoreDiff", "TotalPoints")])

# Compute Interquartile Range (IQR) and Standard Deviation
national_iqr_diff <- IQR(national_league$ScoreDiff)
national_iqr_total <- IQR(national_league$TotalPoints)
swiss_iqr_diff <- IQR(swiss_league$ScoreDiff)
swiss_iqr_total <- IQR(swiss_league$TotalPoints)

national_sd_diff <- sd(national_league$ScoreDiff)
national_sd_total <- sd(national_league$TotalPoints)
swiss_sd_diff <- sd(swiss_league$ScoreDiff)
swiss_sd_total <- sd(swiss_league$TotalPoints)

# Print results
national_stats
swiss_stats

cat("National League IQR (Score Diff):", national_iqr_diff, "\n")
cat("National League IQR (Total Points):", national_iqr_total, "\n")
cat("Swiss League IQR (Score Diff):", swiss_iqr_diff, "\n")
cat("Swiss League IQR (Total Points):", swiss_iqr_total, "\n")

cat("National League SD (Score Diff):", national_sd_diff, "\n")
cat("National League SD (Total Points):", national_sd_total, "\n")
cat("Swiss League SD (Score Diff):", swiss_sd_diff, "\n")
cat("Swiss League SD (Total Points):", swiss_sd_total, "\n")



# Boxplot for Score Difference
par(mfrow=c(1,2)) # Arrange plots side by side
boxplot(national_league$ScoreDiff, swiss_league$ScoreDiff,
        names = c("National League", "Swiss League"),
        main = "Score Difference",
        col = c("blue", "red"), ylab = "Difference")

# Boxplot for Total Points
boxplot(national_league$TotalPoints, swiss_league$TotalPoints,
        names = c("National League", "Swiss League"),
        main = "Total Points",
        col = c("blue", "red"), ylab = "Total Points")


