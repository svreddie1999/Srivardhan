#Reading the csv file
frailty_data = read.csv("C:\\Users\\msred\\OneDrive\\Documents\\pds\\1\\data_raw\\raw_frailty_data1.csv")

#Getting the info of complete csv
summary(frailty_data)

frailty_data$Frailty <- as.factor(frailty_data$Frailty)


t_test_frailty=with(frailty_data,t.test(frailty_data$Weight ~ frailty_data$Frailty,var.equal = FALSE))
t_test_frailty

capture.output(t_test_frailty,file="C:\\Users\\msred\\OneDrive\\Documents\\pds\\1\\results\\results.txt")
