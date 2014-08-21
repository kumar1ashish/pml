# List of packages for session
.packages = c("data.table","caret","ggplot2","knitr","xtable","randomForest")

# Install CRAN packages (if not already installed)
.inst <- .packages %in% installed.packages()
if(length(.packages[!.inst]) > 0) install.packages(.packages[!.inst])

# Load packages into session 
lapply(.packages, require, character.only=TRUE)

# function to download train and test data
download_pml<-function(){
download.file(“https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv”)
download.file(“https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv”)
}

# download the train and test files 
download_pml()

read_pml<-function(file) {
fread(file,na.strings=c(#DIV/0!”,””))
}

# Read the files 
train<- read_pml(“pml-training.csv”)
test<-read.pml(“pml-testing.csv”)
