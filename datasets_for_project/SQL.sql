DROP SCHEMA IF EXISTS UofM_Project_4;

CREATE SCHEMA IF NOT EXISTS UofM_Project_4;

DROP TABLE IF EXISTS UofM_Project_4.health_expend_vs_gdp;
CREATE TABLE UofM_Project_4.health_expend_vs_gdp(
	id INT NOT NULL,
	Entity VARCHAR NOT NULL, 
	Code VARCHAR NOT NULL, 
	Year_1 INT NOT NULL,
	Current_health_expenditure_per_capita_PPP_current_international_$ FLOAT NOT NULL,
	GDP_per_capita_PPP_current_international_$ FLOAT NOT NULL,
	Population_historical_estimates FLOAT NOT NULL
)
;
DROP TABLE IF EXISTS UofM_Project_4.health_protect_cov;
CREATE TABLE UofM_Project_4.health_protect_cov(
	id INT NOT NULL,
	Entity VARCHAR NOT NULL, 
	Code VARCHAR NOT NULL, 
	Share_of_population_covered_by_health_insurance_ILO_2014 FLOAT NOT NULL
)
;
DROP TABLE IF EXISTS UofM_Project_4.life_expect_vs_health_expend;
CREATE TABLE UofM_Project_4.life_expect_vs_health_expend(
	id INT NOT NULL,
	Entity VARCHAR NOT NULL, 
	Code VARCHAR NOT NULL, 
	Year_2 FLOAT NOT NULL, 
	Life_expectancy_at_birth_total_years FLOAT NOT NULL,
	Health_Expenditure_and_Financing_per_capita_OECDstat_2017 FLOAT NOT NULL,
	Population_historical_estimates FLOAT NOT NULL
)
;
DROP TABLE IF EXISTS UofM_Project_4.total_health_expend_gdp;
CREATE TABLE UofM_Project_4.total_health_expend_gdp(
	id INT NOT NULL,
	Entity VARCHAR NOT NULL, 
	Code VARCHAR NOT NULL, 
	Year_3 INT NOT NULL, 
	Indicator_Current_health_expenditure_CHE_as_percentage_of_gross_domestic_product_GDP_percent FLOAT NOT NULL
)
;

SELECT * FROM UofM_Project_4.total_health_expend_gdp LIMIT 5;
SELECT * FROM UofM_Project_4.health_expend_vs_gdp LIMIT 5;
SELECT * FROM UofM_Project_4.health_protect_cov LIMIT 5;
SELECT * FROM UofM_Project_4.life_expect_vs_health_expend LIMIT 5;

SELECT * FROM UofM_Project_4.health_expend_vs_gdp
	JOIN UofM_Project_4.life_expect_vs_health_expend
	ON UofM_Project_4.health_expend_vs_gdp.Entity = UofM_Project_4.life_expect_vs_health_expend.Entity
	AND UofM_Project_4.health_expend_vs_gdp.Year_1 = UofM_Project_4.life_expect_vs_health_expend.Year_2
	JOIN UofM_Project_4.total_health_expend_gdp
	ON UofM_Project_4.total_health_expend_gdp.Entity = UofM_Project_4.life_expect_vs_health_expend.Entity
	AND UofM_Project_4.total_health_expend_gdp.Year_3 = UofM_Project_4.life_expect_vs_health_expend.Year_2
	JOIN UofM_Project_4.health_protect_cov
	ON UofM_Project_4.health_protect_cov.Entity = UofM_Project_4.life_expect_vs_health_expend.Entity
	WHERE UofM_Project_4.health_expend_vs_gdp.Year_1 IN (2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020);