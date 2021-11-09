#install necessary packages

install.packages(c("distill", "postcards"))

#checking pacakage versions

packageVersion("distill")
packageVersion("rmarkdown")
packageVersion("postcards")

library(postcards)
library(distill)
create_website(dir = ".", title = "mfeo", gh_pages = TRUE)



#creating postcard

create_postcard(file = "jesse.rmd")

# creating distill theme

create_theme("postcards")

create_post("welcome")

file.edit("blog.Rmd")
install.packages("usethis")
library(usethis)
use_git_config(user.name = "Jesse-Flowers", user.email = "jesseflow99@gmail.com")
