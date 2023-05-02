Sys.setenv(RSTUDIO_PANDOC="/opt/rstudio-server/bin/pandoc")
rmarkdown::render("/mnt/ceph/erichs/git/IMCI-covid-riskfinal/Rmd/Risk_SupplementalA_revised.Rmd")
#nohup R CMD BATCH /mnt/ceph/erichs/git/IMCI-covid-riskfinal/src/risk_Rmd_commandline.R &