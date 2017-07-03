source("dlData.R")

# Load the NEI & SCC data frames.
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

findata <- with(NEI, aggregate(Emissions, by = list(year), sum))

png("plot1.png",width=480,height=480,units="px",bg="transparent")

plot(findata, type = "o", main = "Total PM2.5 Emissions", xlab = "Year", ylab = "PM2.5 Emissions", pch = 19, col = "darkblue", lty = 6)

dev.off()