#risk_cases_deaths_summary.R




covidny <- read.csv("/mnt/ceph/erichs/git/IMCI-covid/data/nytimes_covid_data/us_counties_covid.csv")
colnames(covidny)[4] <- "FIPS"
covidny$date <- as.Date(covidny$date)

#df <- covidny %>%group_by(FIPS)%>%
#  mutate(daily_deaths = c(deaths[1],diff(deaths)))

df <- transform(covidny, daily_deaths = ave(deaths, FIPS, 
                                            FUN=function(x) x - c(0, head(x, -1))))

dfa <- transform(covidny, daily_cases = ave(cases, FIPS, 
                                            FUN=function(x) x - c(0, head(x, -1))))
# 
# dfa <- covidny %>%group_by(FIPS)%>%
#   mutate(daily_cases = c(cases[1],diff(cases)))


df <- as.data.frame(df)
df2 <- as.data.frame(dfa)
# 
# #added to refine to ID, TX, and VT
# df <- subset(df, state == "Idaho" | state == "Texas" | state == "Vermont")
df <- na.omit(df)
df <- as.data.frame(df)
# 
# 
# df2 <- subset(dfa, state == "Idaho" | state == "Texas" | state == "Vermont")
df2 <- na.omit(df2)
df2 <- as.data.frame(df2)

df2a <- aggregate(df2$daily_cases, by=list(df2$date, df2$state), FUN = "sum")

df2aa <- aggregate(df2$cases, by=list(df2$date, df2$state), FUN = "sum")

df2aa$daily_cases <- df2a$x
colnames(df2aa) <- c("date", "state", "cases", "daily_cases")

df2b <- aggregate(df$daily_deaths, by=list(df$date, df$FIPS), FUN = "sum")

df2bb <- aggregate(df$deaths, by=list(df$date, df$FIPS), FUN = "sum")

df2bb$daily_deaths <- df2b$x
colnames(df2bb) <- c("date", "FIPS", "deaths", "daily_deaths")

write.csv(df2bb, file = "/mnt/ceph/erichs/git/IMCI-covid-riskfinal/data/survey_daily_deaths.csv")

combined <- read.csv("/mnt/ceph/erichs/git/IMCI-covid/figures/infectious_frequency_data_combined/sevenday_combined.csv")
combined_refined <- combined[,c(6, 9,23,30)]
SVI <- read.csv("/mnt/ceph/erichs/git/IMCI-covid-arima/data/SVI2018_US_COUNTY.csv")
SVI_refined <- SVI[,c(5,98)]
elections <- read.csv("/mnt/ceph/erichs/git/IMCI-covid-arima/data/elections2020.csv")
elections_refined<- elections[elections$lname == "Biden",]

#deaths are only three states of idaho, vermont, and texas.  Needs fixed
daily_deaths <- read.csv("/mnt/ceph/erichs/git/IMCI-covid-arima/data/survey_daily_deaths.csv")
combined$fips <- str_pad(combined$fips, 5, pad = "0")

colnames(combined_refined) <- c("FIPS", "new.cases", "freq.trans", "date")
colnames(daily_deaths) <- c("date", "FIPS", "deaths", "daily_deaths")
colnames(elections_refined) <- c("X", "FIPS", "total_votes", "race", "id", "fips_char", "place", "fname", "lname", "party", "pab", "votes", "incumbent", "mpc", "pct")
daily_combined <- merge(combined_refined, daily_deaths, by=c("FIPS", "date"))
daily_combined <- merge(daily_combined, SVI_refined, by="FIPS" )
daily_combined <- merge(daily_combined, elections_refined, by="FIPS" )



write.csv(daily_deaths, file = "/mnt/ceph/erichs/git/IMCI-covid-riskfinal/data/deaths_nationwide_cumulative.csv")
