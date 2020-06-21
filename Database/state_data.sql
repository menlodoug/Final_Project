CREATE TABLE california_state_cases (
  date date NOT NULL,
  case_day int,
  death_day int,
  PRIMARY KEY (date)
 );

 CREATE TABLE california_state_mobility (
  datetime date NOT NULL,
  county VARCHAR,
  retail_and_recreation_percent_change_from_baseline decimal,
  grocery_and_pharmacy_percent_change_from_baseline decimal,
  parks_percent_change_from_baseline decimal,
  transit_stations_percent_change_from_baseline decimal,
  workplaces_percent_change_from_baseline decimal,
  residential_percent_change_from_baseline decimal,
  PRIMARY KEY (datetime)
 );