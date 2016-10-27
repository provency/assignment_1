#Activate apa.cor.table
library(apaTables)

#Create correlation table with confidence intervals based on data frame "attitude"
apa.cor.table(attitude, filename="Table1_attitudeAPA.doc",table.number = 1)

#Comparing correlations with cocor package

#Activate and glimpse
library(tidyverse)
glimpse(attitude) #only to see variables in data

#Comparing rating-complaints and rating-critical correlations
library(cocor)
apa.cor.table(attitude) #also to see variables
cocor(~rating+complaints|rating+critical,data = as.data.frame(attitude))
