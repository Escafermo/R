dataset = read.csv('Data.csv')
dataset$Age = ifelse(is.na(dataset$Age),
                     ave(dataset$Age, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Age)
dataset$Salary = ifelse(is.na(dataset$Salary), # is dataset NULL
                        ave(dataset$Salary, FUN = function(x) mean(x, na.rm = TRUE)), #REPLACE WITH ave-rage (mean)
                        dataset$Salary)
