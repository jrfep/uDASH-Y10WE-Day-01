auto_data <- read_csv("01-Monday/Datasets-Info/data/small_business_invoices.csv")
auto_data$DESCRIPTION
table(auto_data$DESCRIPTION)
length(table(auto_data$DESCRIPTION))


auto_data %<>% mutate(
  part=case_when(
    grepl("BRAKE",DESCRIPTION)~"BRAKE",
    grepl("ENGINE",DESCRIPTION)~"ENGINE",
    grepl("RADIATOR",DESCRIPTION)~"RADIATOR",
    TRUE~"OTHER"))
