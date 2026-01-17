
# Set CRAN mirror
options(repos = c(CRAN = "https://cloud.r-project.org"))

# Set Pandoc path
Sys.setenv(RSTUDIO_PANDOC = "C:/Program Files/RStudio/resources/app/bin/quarto/bin/tools")

# List of required packages
required_packages <- c("ggplot2", "dplyr", "tidyr", "knitr", "corrplot", "lubridate", "rmarkdown")

# Check and install packages
for (pkg in required_packages) {
  if (!require(pkg, character.only = TRUE)) {
    message(paste("Installing", pkg, "..."))
    install.packages(pkg)
    if (!require(pkg, character.only = TRUE)) {
      stop(paste("Failed to install", pkg))
    }
  }
}

# Check CBRT specifically
if (!require("CBRT", character.only = TRUE)) {
    message("Installing CBRT...")
    tryCatch({
        install.packages("CBRT")
    }, error = function(e) {
        message("Could not install CBRT from CRAN. It might be a custom package.")
    })
}

# Create output directory if it doesn't exist
if (!dir.exists("output")) {
  dir.create("output")
}

# Render the Rmd files
message("Rendering gdp_analysis.Rmd...")
rmarkdown::render("gdp_analysis.Rmd", output_dir = "output")

message("Rendering unemployment_analysis.Rmd...")
rmarkdown::render("unemployment_analysis.Rmd", output_dir = "output")
message("Done.")
