# List of packages for session
.packages = c("data.table","caret","ggplot2","knitr","xtable","randomForest","Hmisc","doParallel")

# Install CRAN packages (if not already installed)
.inst <- .packages %in% installed.packages()
if(length(.packages[!.inst]) > 0) install.packages(.packages[!.inst])

# Load packages into session 
lapply(.packages, require, character.only=TRUE)

# Read train and test data
training_data <- read.csv("http://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv", na.strings=c("#DIV/0!") )
evaluation_data <- read.csv("http://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv", na.strings=c("#DIV/0!") )

# data cleansing.
