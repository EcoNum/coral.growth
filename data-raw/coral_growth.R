## code to prepare `coral_growth` dataset goes here
cg <- readRDS("data-raw/coral_growth.rds")

# reshape data

names(cg)
coral_growth <- cg[cg$id != 11 , c("id", "date", "weight",
                                   "salinity", "temperature")]
coral_growth$id <- as.factor(as.character(coral_growth$id))

# To include it as a dataset inside the package
usethis::use_data(coral_growth, version = 3)
