install.packages("learnr") # solo una vez
install.packages("devtools") # solo una vez
devtools::install_github("dgonxalex80/paqueteDEG")
learnr::run_tutorial("Taller-sumatoria", "paqueteDEG")



install.packages("psych", type = "binary", dependencies = TRUE)
install.packages("mnormt", type = "binary", dependencies = TRUE)
