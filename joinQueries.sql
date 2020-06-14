SELECT  County_Name,	
		Population,
		Total_Count_Confirmed,
		Total_Count_Deaths,
		COVID19_Positive_Patients,
		ICU_COVID19_Positive_Patients,
		Age_0_5,
		Age_6_17,
		Age_18_64,
		Age_65plus,
		American_Indian,
		Asian,
		Black,
		Hispanic,
		Multi_Racial,
		Hawaiin_Pacific_Island,
		White,
		Poverty_All_Ages,
		Poverty_All_Ages_Percent,
		Poverty_Under18,
		Poverty_Under18_Percent
FROM bycounties 
    FULL OUTER JOIN California_Age 
    	ON (bycounties.County_name = California_Age.County)
	FULL OUTER JOIN california_ethnicities_2019
		ON (california_ethnicities_2019.county = bycounties.County_name)
	FULL OUTER JOIN california_poverty
		ON (california_poverty.county = bycounties.County_name);
