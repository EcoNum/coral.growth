## code to prepare `coral_growth` dataset goes here

coral_url <- "https://docs.google.com/spreadsheets/d/e/2PACX-1vSoBfvhztFgALk1fcljBbYP03D-fRIEy7mu1DrHKZ--BXYZWHFxUujac_-gFSteM99p7CFQILT_eXcC/pub?gid=0&single=true&output=csv"

#Importation et format des colonnes
readr::read_csv(coral_url,
         col_types = cols( .default = col_character(),
                           date = col_datetime(),
                           weight = col_double(),
                           temperature = col_double(),
                           salinity = col_double() )) %>.%
  filter(., id %in% c(1, 27, 25, 18, 69, 46, 82, 31, 39, 53, 83)) %>.%
  arrange(., date) %>.%
  mutate(.,
         species = factor(species),
         id = as.numeric(id),
         id = as.factor(id),
         date = (as.numeric(difftime(date, date[1], units = "days")))) %>.%
  select(., -project, -author, -aqua, -condition, -status, -comment) -> t


# reshape data
t <- t[, c("id", "species", "date", "weight",
                                   "salinity", "temperature")]

coral_growth1 <- t

# To include it as a dataset inside the package
usethis::use_data(coral_growth1, version = 3, overwrite = TRUE)
