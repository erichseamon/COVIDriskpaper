## Supplemental Materials: Spatiotemporal Impacts of Ideology and Social Vulnerability on COVID-19

Submitted to Scientific Reports July 2023

Erich Seamon, Jennifer Johnson-Leung, Craig R. Miller, Benjamin J. Ridenhour

July 2023

## Overview:

The following github repository provides all code and data for generating analyses and supplemental materials for the aforementioned manuscript, submitted to Scientific Reports. 

## How do I re-generate the Supplemental Appendix?

- a pdf is provided of the supplemental, within the /Rmd folder.  If you want to generate the pdf on your own, you may run the Supplemental_AppendixA.Rmd.  All of the folders and datasets support running the supplemnental .Rmd.

## Folder Descriptions

- /Rmd  -  core folder which contains Risk_SupplementalA.Rmd.
- /data  - folder which contains all data accessed as part of Risk_SupplementalA.Rmd
- /figures - contains .png image files that are used in the Risk_SupplementalA.Rmd
- /html - contains regression output tables for each United States Health and Human Services regions.  Each of the tables is embedded in the Risk_SupplementalA.Rmd.
- /linear_models - contains regression model outputs as .RDS files for each United States Health and Human Services Region, for three different dependent variable model outputs: cases, deaths, and deaths over age 65.
- /outputs - contains interim data preparation outputs for alpha, delta, and omicron wave models.
- /region_pngs - contains .png images of regional Health and Human Services maps.


## Data Descriptions

Within the /data folder, there are a number of datasets.  Each dataset is described below, with key field names and usage.

- sevenday_combined.csv: This csv contains daily cases and deaths for all United States counties, for each day from January 2020 to April 2022.  Given the large size of this .csv, it is split into TWO zip files, and is automatically merged together and loaded as the Risk_SupplementalA.Rmd is run.

Column descriptions:

  - County: county name
- state: state name
- size: population count (raw population number)
- fips: fips number (five digit unique county ID)
- cuml.cases: cumulative cases per county (counts)
- past.cases: past cases per county (counts)
- new.cases: new cases per county (counts)
- daily.cases: cases for that day, per county
- act.pt: frequency calculations (not used)
- act.low: frequency calculations (not used)
- act.hi: frequency calculations (not used)
- freq.act: frequency calculations (not used)
- freq.act.low: frequency calculations (not used)
- freq.act.hi: frequency calculations (not used)
- one_act: frequency calculations (not used)
- one.act.low: frequency calculations (not used)
- one.act.hi: frequency calculations (not used)
- trans.pt: frequency calculations (not used)
- trans.pt.low: frequency calculations (not used)
- trans.pt.hi: frequency calculations (not used)
- freq.trans_low: frequency calculations (not used)
- freq.trans_hi: frequency calculations (not used)
- one.trans: frequency calculations (not used)
- one.trans_low: frequency calculations (not used)
- one.trans_hi: frequency calculations (not used)
- county2: lowercase county name
- date: date (YYYY-MM-DD)



- deaths_nationwide_cumulative.csv: This csv provides daily deaths for all United States counties, as well as cumulative deaths.  The .csv is zipped - and is uncompressed and loaded as the Risk_SupplementalA.Rmd is run.
- voting_nationwide_liberal.csv: This .csv contains voting data from the 2020 general election, using the Biden/Trump voter breakdown.  The voting percentage refers to the % of people, per county, who voted for Biden.
- age65_over.csv: This .csv contains the population of adults over the age of 65, per county (2020 US Census).
- broadband.csv: This .csv contains the number of peopler per county who have access to broadband, by county.
- countyrankings_refined.csv: This .csv file contains county level health rankings that are taken from the University of Wisconsin's Population Health Institute.
- Population-Density By County.csv: This .csv contains the population counts and density for each county in the United States, as derived from US Census 2020 data.
- SVI2018_US_COUNTY.csv: This .csv contains social vulnerability indices (SVI) at the county level, taken from the Centers for Disease Control and Prevention (CDC).
- /counties: This folder contains a shapefile and associated data for county mapping data - UScounties_conus.shp.
- /states: This folder contains a shapefile and associated data for state mapping data - states.shp.

