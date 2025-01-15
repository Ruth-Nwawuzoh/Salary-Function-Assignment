if (!require("utils")) install.packages("utils")

Employee_Profile_zip <- "C:\\Users\\ruthn\\OneDrive\\Desktop\\NXU\\BAN6420\\MODULE 2\\Employee Profile.zip"

# Set the working directory and specify the zip file path
zip_file <- Employee_Profile_zip
unzip_dir <- "Unzipped_Employee_Profile"

# Unzip the folder
unzip(zip_file, exdir = unzip_dir)
cat("Files unzipped successfully!\n")

# List the files in the unzipped folder
files <- list.files(unzip_dir, full.names = TRUE)
print(files)

# Display the content of the CSV file
if (length(files) > 0) {
  for (file in files) {
    data <- read.csv(file)
    print(data)
  }
} else {
  cat("No files found in the unzipped directory.\n")
}
