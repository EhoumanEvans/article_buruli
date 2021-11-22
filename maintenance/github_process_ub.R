# Check your configuration
usethis::git_sitrep()
git_vaccinate()
# Set your configuration
usethis::use_git_config(
  user.name = "EhoumanEvans",
  user.email = "ehoumanevans@gmail.com")


# Configure Git after installation
library(usethis)
edit_git_config()
EhoumanEvans

# Create a Personal Access Token (PAT) on GitHub
library(usethis)

create_github_token()
  # Copy the token Generated in Github
  # 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

# Relaunch RStudio
# Store Personal Access Token to Connect RStudio and GitHub

library(gitcreds)
gitcreds_set()


  # Relaunch RStudio
# Connect RStudio Projects with GitHub Repositories
# RStudio First
library(usethis)
use_github()

# S'il y a une erreur d'origine faire le code suivant en 
# `usethis::use_git_remote("origin", url = NULL, overwrite = TRUE)`

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
# ensuite 

# git remote add origin https://github.com/EhoumanEvans/article_buruli.git
git branch -M main
git push -u origin main


