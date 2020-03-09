
setwd("C:/Users/User/Downloads")
load("tb.rdata")
load("cases.rdata")
load("pollution.rdata")
library(dplyr)

library(tidyr)
a = cases %>%  gather("year","n",2:4)

b = tb %>%  gather("age","cases",4:6) %>% arrange(country,year,sex)

c = spread(pollution,"size","amount")

############################33
a = gather(cases,"year","value",2:4)
b = spread(pollution,size,amount)
