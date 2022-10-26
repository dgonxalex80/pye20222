# consula
sudo apt-get install libcurl4-openssl-dev libssl-dev
sudo apt install r-cran-devtools
sudo apt-get install r-base-dev libcurl4-openssl-dev libxml2-dev libssl-dev libmagick++-6.q16-dev

install.packages('devtools') # if not already installed
library(devtools)
install_github("dcomtois/summarytools")



install.packages("learnr") # solo una vez
install.packages('remotes')  # solo una vez
library(remotes) # solo una vez
install_github("dgonxalex80/paqueteDEG", force = TRUE) # solo una vez

