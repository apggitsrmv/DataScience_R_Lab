#survival analysis lung data
library(survival)
head(lung)
#https://www.emilyzabor.com/tutorials/survival_analysis_in_r_tutorial.html
#What is survival data?
library(survminer)
library(lubridate)

#  Time-to-event data that consist of a distinct start time and end time.

#Examples from cancer

#Time from surgery to death
#Time from start of treatment to progression
#Time from response to recurrence
#Examples from other fields
#Examples from other fields
#Time-to-event data are common in many fields including, but not limited to

#Time from HIV infection to development of AIDS
#Time to heart attack
#Time to onset of substance abuse
#Time to machine malfunction
#Aliases for survival analysis
#Because survival analysis is common in many other fields, it also goes by other names

#Reliability analysis
#Duration analysis
#Event history analysis
#Time-to-event analysis
#The lung data


#The lung dataset
#The lung dataset is available from the survival package in R. The data contain subjects with advanced lung cancer from the North Central Cancer Treatment Group. Some variables we will use to demonstrate methods today include

#time: Survival time in days
#status: censoring status 1=censored, 2=dead
#sex: Male=1 Female=2
#What is censoring?
#censoring occurs when subject has not  experience event of interest by the end of data collection

#Types of censoring
#A subject may be censored due to:
  
#  Loss to follow-up
#Withdrawal from study
#No event by end of fixed study period
#Specifically these are examples of right censoring.

#Left censoring and interval censoring are also possible, and methods exist 
#to analyze this type of data, but this training will be limited to right censoring

#Components of survival data
#For subject i:
  
#  Event time Ti

#Censoring time Ci

#Event indicator δi:
  
#1 if event observed (i.e. Ti≤Ci)
#0 if censored (i.e. Ti>Ci)
#Observed time Yi=min(Ti,Ci)

#The observed times and an event indicator are provided in the lung data

#time: Survival time in days (Yi)
#status: censoring status 1=censored, 2=dead (δi)


date_ex <-tibble(
    sx_date = c("2007-06-22", "2004-02-13", "2010-10-27"), 
    last_fup_date = c("2017-04-15", "2018-07-04", "2016-10-31")
  )

date_ex
