


c1=read.csv("Medicare_Provider_Charge_Inpatient_DRGALL_FY2014.csv")

c2= c1 %>% 
  mutate(Total.Cost=Average.Covered.Charges+Average.Total.Payments+Average.Medicare.Payments)

c3 = c2 %>% 
  mutate(Percent.Total.Coverage= round((Average.Covered.Charges+Average.Medicare.Payments)/Total.Cost,2))


c4 = c3 %>% 
  mutate(Percent.Insurance.Coverage= round((Average.Covered.Charges)/Total.Cost,2))

c5 = c4 %>% 
  mutate(Percent.Medicare.Coverage= round((Average.Medicare.Payments)/Total.Cost,2))


c6 = c5 %>% 
  mutate(Percent.Patient.Payment= round((Average.Total.Payments)/Total.Cost,2))




write.csv(c6,"Medicare_Provider_Charge_Inpatient_DRGALL_FY2014_Prepared_Final.csv")
