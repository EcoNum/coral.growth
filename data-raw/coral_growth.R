## code to prepare `coral_growth` dataset goes here
cg <- readRDS("data-raw/coral_growth.rds")

# reshape data
names(cg)
coral_growth <- cg[cg$id != 11 , c("id", "date", "weight",
                                   "salinity", "temperature")]

coral_growth %>.%
  mutate(.,
         id = as.factor(as.character(id)),
         date = (as.numeric(difftime(date, date[1], units = "days")))) -> coral_growth

# To include it as a dataset inside the package
usethis::use_data(coral_growth, version = 3, overwrite = TRUE)
