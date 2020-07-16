# BasicTools
Basic tools to facilitate repetitive analyses in R (some functions are only available in RStudio)

Start_RStudio.R:
- Remove existing variables
- Clear plots
- Use scientific notation
- Clear console

SummaryStats.R:
- For any dataframe containing numerical and categorical variables.
- Numerical variables:
  - Calculate the average, standard deviation, minimum, and maximum for each variable
  - Combine results from numerical variables
  - Save the results in a .csv file
- Categorical variables:
  - Get the unique levels for each variable
  - Calculate the cases for each level and variable
  - Combine results from categorical variables
  - Save the results in a .csv file
- This is recommended for variables with less than 10 categories
- Especially useful for standard data description for research purposes

