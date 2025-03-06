# Reading the TXT file into R
hockey_data <- read.table("C:/Users/sebas/OneDrive/Documents/repository_git/MAT903/Daten_Sheet_3.txt", header = TRUE, sep = " ")

# Displaying the data
print(hockey_data)


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


