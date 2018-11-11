#Author: Sanjay Kumar
#Date: 11-Nov-2018
#graphics parameters
# Credit: https://stackoverflow.com/questions/5789982/reset-par-to-the-default-values-at-startup/16859926
resetPar <- function() {
  dev.new()
  op <- par(no.readonly = TRUE)
  dev.off()
  op
}