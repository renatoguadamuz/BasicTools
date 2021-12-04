##Basic RStudio Tools

Basic tools to facilitate repetitive analyses in R (some functions are only available in RStudio)

#Start_RStudio.R

A useful code snippet to adjust your RStudio environment to start your code with a clean slate:
- Remove existing variables
- Release unused memory
- Clear plots
- Use scientific notation
- Set time zone
- Clear console

#SummaryStats.R:

A basic but necessary tool to summarize numeric and categorical variables as initial steps to get to know your data and standard data description for research and documentation:
- Designed for dataframes containing numerical and categorical variables.
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

Happy coding!
