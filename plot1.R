## This first line will likely take a few seconds. Be patient!
if(!exists("NEI")){
  NEI <- readRDS("./exdata-data-NEI_data/summarySCC_PM25.rds")
}

if(!exists("SCC")){
  SCC <- readRDS("./exdata-data-NEI_data/Source_Classification_Code.rds")
}

## Have total emissions from PM2.5 decreased in the United States from 1999 to 
## 2008? Using the base plotting system, make a plot showing the total PM2.5 
## emission from all sources for each of the years 1999, 2002, 2005, and 2008.

totalEmissionsByYear <- aggregate(Emissions ~ year, NEI, sum)

png("plot1.png", width = 480, height = 480)

barplot(height = totalEmissionsByYear$Emissions, 
        names.arg = totalEmissionsByYear$year, 
        xlab = "Year", 
        ylab = "Total PM2.5 Emissions",
        main = "Total PM2.5 Emissions for 1999, 2002, 2005, and 2008")
dev.off()