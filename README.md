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
- deaths_nationwide_cumulative.csv: This csv provides daily deaths for all United States counties, as well as cumulative deaths.  The .csv is zipped - and is uncompressed and loaded as the Risk_SupplementalA.Rmd is run.
- 

