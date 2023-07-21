#Guardo mi DB en una variable
df<-Birthweight_reduced_kg_SPSS
summary (df$smoker)
df_smoker <- df[df$smoker == 1, ]

summary(df_nsmoker$Birthweight)
summary(df_smoker$Birthweight)
summary(df_nsmoker$Headcirc)
summary(df_smoker$Gestation)

#Analisis de normalidad
shapiro.test(df_smoker$Headcirc)
shapiro.test(df_nsmoker$Headcirc)
shapiro.test(df_smoker$Birthweight)
shapiro.test(df_nsmoker$Length)
shapiro.test(df$Birthweight)

#Standard Score HeadCirc
# Definir los valores
sd_nsmoker_headcirc <- sd(df_nsmoker$Headcirc)
x <- 35.05
media <- 34.50
# Calcular el z-score
z_score <- (x - media) / sd_nsmoker_headcirc
# Imprimir el resultado
print(z_score)

#Skewness
skewness(df_nsmoker$Birthweight)

#SD of a baby's birthwaight
# Calculate the mean and standard deviation
mean_data_bw <- mean(df$Birthweight)
sd_data_bw <- sd(df$Birthweight)
# Define the range for data within ±1 standard deviation from the mean
lower_bound_bw <- mean_data_bw - sd_data_bw
upper_bound_bw <- mean_data_bw + sd_data_bw
# Check which data points fall within the range
within_sd_range_bw <- df$Birthweight >= lower_bound_bw & df$Birthweight <= upper_bound_bw

#Calcute the probability
# Value of interest (x)
xbw <- 4.2
# Calculate the mean and standard deviation
mean_data_bw_s <- mean(df_smoker$Birthweight)
sd_data_bw_s <- sd(df_smoker$Birthweight)
# Calculate the cumulative probability using pnorm()
probability_less_than_x <- pnorm(xbw, mean = mean_data_bw_s, sd = sd_data_bw_s)
# Print the result
print(probability_less_than_x)

#Standard Score
# Definir los valores
sd_nsmoker_length <- sd(df_nsmoker$Length)
x_len_ns <- 48.5
mean_data_len_ns <- mean(df_smoker$Length)
# Calcular el z-score
z_score <- (x_len_ns - mean_data_len_ns) / sd_nsmoker_length
# Imprimir el resultado
print(z_score)

#Calcute the probability
# Value of interest (x)
xl <- 55
# Calculate the cumulative probability using pnorm()
probability_greater_than_xl <- 1 - pnorm(xl, mean = mean_data_len_ns, sd = sd_nsmoker_length)
# Print the result
print(probability_greater_than_xl)



