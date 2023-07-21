Sys.setenv(RSTUDIO_PANDOC="/opt/rstudio-server/bin/pandoc")
rmarkdown::render("/mnt/ceph/erichs/git/COVIDriskpaper/Risk_SupplementalA.Rmd")
#nohup R CMD BATCH /mnt/ceph/erichs/git/COVIDriskpaper/src/risk_Rmd_commandline.R &