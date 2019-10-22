library(rgeolocate)

data1 = read.csv("F:/INSOFE/1.MiTH/MiTH_Data/Data_For_all/train_merchant_data.csv")
ipmmdb <- system.file("extdata","GeoLite2-Country.mmdb", package = "rgeolocate")
results <- maxmind(data1$IP_Address, ipmmdb,"country_name")

export.results <- data.frame(data1$IP_Address, results$country_name)
colnames(export.results) <- c("IP_Address", "Country")
write.csv(export.results, "F:/INSOFE/1.MiTH/MiTH_Data/Data_For_all/train_IP_to_Location.csv")




data2 = read.csv("F:/INSOFE/1.MiTH/MiTH_Data/Data_For_all/test_merchant_data.csv")
ipmmdb <- system.file("extdata","GeoLite2-Country.mmdb", package = "rgeolocate")
results <- maxmind(data2$IP_Address, ipmmdb,"country_name")

export.results <- data.frame(data2$IP_Address, results$country_name)
colnames(export.results) <- c("IP_Address", "Country")
write.csv(export.results, "F:/INSOFE/1.MiTH/MiTH_Data/Data_For_all/test_IP_to_Location.csv")
