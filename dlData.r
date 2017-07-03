### --- Download Data and Extract to a Directory --- ###
dlData<-function()
{
  dataFile <- 'https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip'
  download.file(dataFile, 'Activity_monitoring_data', method='curl')
  unzip('Activity_monitoring_data.zip')
  
}
if (!file.exists("Activity_monitoring_data.zip")) {
  dlData()
}
### --- Download Data and Extract to a Directory --- ###