#CASE STUDY

# Select the columns from NSSAL_2000
col_NSSAL2000 <- c("sserial", "dateyoi", "rsex", "attscale", "hetlife", "het5yrs", "het1yr")

# Create a new data frame with only the selected columns
df <- NSSAL_2000[col_NSSAL2000]

# Select the columns from NSSAL_2010
col_NSSAL2010 <- c("sin2", "dateyoi", "rsex", "attscale", "hetlife", "het5yrs", "het1yr")

# Create a new data frame with only the selected columns
df_2010 <- NSSAL_2010[col_NSSAL2010]

# Change the name of the column sin2
df_2010$sserial <- df_2010$sin2
df_2010$sin2 <- NULL

# Combine both data frames in one data frame
df_new <- rbind(df, df_2010)

#No estoy segura de cómo medir la última década
#df_new$increase_het_partners <- df_new$het1yr - df_new$het5yrs


#Check Assumptions in order to perform a Linear Regression
#Normallity
# Shapiro-Wilk test
shapiro.test(df_new$increase_het_partners)






