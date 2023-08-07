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


