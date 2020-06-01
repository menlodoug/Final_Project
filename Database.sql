CREATE TABLE COVID19_County (
    County_Name VARCHAR(20) NOT NULL,
	Most_Recent_Date DATE NOT NULL,
	Total_Count_Confirmed int NOT NULL,
	Total_Count_Deaths int NOT NULL,
	COVID19_Positive_Patients int NOT NULL,
	ICU_COVID19_Positive_Patients int NOT NULL,
    PRIMARY KEY (County_Name)
);

CREATE TABLE California_Age (
	County VARCHAR(20) NOT NULL,
	Age_0_5 int NOT NULL,
	Age_6_17 int NOT NULL,
	Age_18_64 int NOT NULL,
	Age_65plus int NOT NULL,
    PRIMARY KEY (County),
	FOREIGN KEY (County) REFERENCES COVID19_County (County_Name),
    UNIQUE (County)
);

CREATE TABLE California_ethnicities_2019 (
	County VARCHAR(20) NOT NULL,
	American_Indian int NOT NULL,
	Asian int NOT NULL,
	Black int NOT NULL,
	Hispanic int NOT NULL,
	Multi_Racial int NOT NULL,
	Hawaiin_Pacific_Island int NOT NULL,
	White int NOT NULL,
	PRIMARY KEY (County),
	FOREIGN KEY (County) REFERENCES COVID19_County (County_Name),
	UNIQUE (County)
);

CREATE TABLE California_Poverty (
	County VARCHAR(20) NOT NULL,
	Population int NOT NULL,
	Poverty_All_Ages int NOT NULL,
	Poverty_All_Ages_Percent decimal NOT NULL,
	Poverty_Under18 int NOT NULL,
	Poverty_Under18_Percent decimal NOT NULL,
	PRIMARY KEY (County),
	FOREIGN KEY (County) REFERENCES COVID19_County (County_Name),
   	UNIQUE (County)
);

SELECT* FROM COVID19_County