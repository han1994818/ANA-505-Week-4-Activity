library(dplyr)

# Convert Titanic dataset to a dataframe
titanic_df <- as.data.frame(Titanic)

# See the top rows of the data
head(titanic_df)

# Install and load the dplyr package
# install.packages("dplyr")  # Uncomment if not previously installed
library(dplyr)

# Select Survived and Sex columns
selected_data <- select(titanic_df, Survived, Sex)

# Deselect the Sex column
without_sex <- select(selected_data, -Sex)

# Rename 'Sex' column to 'Gender'
renamed_dataset <- rename(selected_data, Gender = Sex)

# Filter the rows with males
males_dataset <- filter(renamed_dataset, Gender == "Male")

# Arrange the dataset by gender
arranged_by_gender <- arrange(renamed_dataset, Gender)

# Sum the Freq column
total_freq <- sum(titanic_df$Freq)
print(total_freq)  # This will print the total frequency

# Filter rows with females
females_dataset <- filter(renamed_dataset, Gender == "Female")

# Combine male and female datasets
combined_dataset <- bind_rows(males_dataset, females_dataset)

# Optional: Explore other dplyr functions such as mutate(), summarise(), group_by()

