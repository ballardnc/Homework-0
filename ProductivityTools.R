##### PRODUCTIVITY TOOLS ######


##### INTRODUCTION TO PRODUCTIVITY TOOLS #####

# General Guiding Principles:
#   Be systematic when organizing your filesystem
# Automize when possible
# Minimize the use of the mouse
# What we will learn:
#   Unix shell
# Git and GitHub
# R markdown

#### INSTALLING SOFTWARE ####

# Key points
# We will install:
#   
#   R: the programming language we use to analyze data
# RStudio: the integrated desktop environment we use to edit, organize, and test R scripts
# Git (and Git Bash for Windows): version control system

#### INSTALLING R ####

# Key points
# You need to install R before using RStudio, which is an interactive desktop environment.
# Select base subdirectory in CRAN and click download.
# Select all default choices in the installation process.
# We recommend selecting English for language to help you better follow the course.
# One can try using the R console, but for productivity purposes, we can switch to RStudio.
# Download R from CRAN
# You can find the latest version of R for your operating system at the CRAN website External link.

#### INSTALLING R STUDIO ####

# Key points
# You can download the latest version of RStudio at the RStudio website External link.
# The free desktop version is more than enough for this course.
# Make sure to choose the version for your own operating system.
# Choose "Yes" for all defaults in the installation process.

#### Using RStudio for the First Time ####

# Key Points
# In Windows, search for Rstudio in "Start"
# In Mac, choose Rstudio from applications, or use Command+Space to use spotlight search to avoid using the mouse
# To start a new script: file > new file > Rscript (or using key bindings: Ctrl+Shift+N on Windows, and Command+Shift+N on Mac)
# Key bindings from Rstudio cheatsheet can be located with Help > cheatsheet > Rstudio IDE cheatsheet

#### INSTALLING PACKAGES ####

# Key points
# We will be using tidyverse and dslabs packages for this course, which do not come preinstalled in base R.
# Install packages from R console: install.packages("pkg_name")
# Install packages from Rstudio interface: Tools > install packages (allow autocomplete)
# Once installed, we can use library("pkg_name") to load a package each time we want to use it
# Check the packages you have installed
# Good practice: make a script to install all the packages you need for a fresh R

# Code
# install.packages("dslabs")  # to install a single package
# install.packages(c("tidyverse", "dslabs")） # to install two packages at the same time
#                  installed.packages() # to see the list of all installed packages

#### RUNNING COMMANDS WHILE EDITING SCRIPTS ####

# Key points
# RStudio has many useful features as an R editor, including the ability to test code easily as we write scripts and several autocomplete features.
# Keyboard shortcuts:
#   Save a script: Ctrl+S on Windows and Command+S on Mac
# Run an entire script:  Ctrl+Shift+Enter on Windows Command+Shift+Return on Mac, or click "Source" on the editor pane
# Run a single line of script: Ctrl+Enter on Windows and Command+Return on Mac while the cursor is pointing to that line, or select the chunk and click "run"
# Open a new script: Ctrl+Shift+N on Windows and Command+Shift+N on Mac
# Code
# library(tidyverse)

#### KEEPING ORGANIZED WITH RSTUDIO PROJECTS ####

# Key points
# RStudio provides a way to keep all the components of a data analysis project organized into one folder and to keep track of information about this project.
# To start a project, click on File > New Project > New repository > New project > decide the location of files and give a name to the project, e.g. "my-first-project". This will then generate a Rproj file called my-first-project.Rproj in the folder associated with the project, from which you can double click to start where you last left off.
# The project name will appear in the upper left corner or the upper right corner, depending on your operating system. When you start an RStudio session with no project, it will display "Project: (None)".

#### INSTALLING GIT INTRODUCTION ####

# Key points
# Git is a version control system, tracking changes and coordinating the editing of code.
# GitHub is a hosting system for code, which can help with your career profile.
# Git is most effectively used with Unix, but it can also interface with RStudio.

#### INSTALLING GIT ####

# Install on Windows
# Download Git bash from https://git-scm.com/ External link
# When asked to choose the default editor for Git, we recommend choosing nano if you do not already know VIM.
# The "git and optional Unix tools from Windows" option will allow you to learn Unix from Rstudio, however, it might interfere with the Windows command line.
# Finally, change the Rstudio preference so that you are using Git bash as the terminal (only for Windows user).
# Install on Mac
# Open the terminal, either from the utility folder or using Cmd+space, and check if you already have Git installed by typing git --version in the command line.
# If you already have Git installed, you will be shown the version number after executing the above. If you do not have Git installed already, you will be prompted to do so.

#### GITHUB ####

# Key points
# Sign up for a GitHub account, with a name that is professional, short, and easy to remember
# Connect to RStudio: global options > Git/SVM, enter the path to git executables
# To avoid typing our GitHub password every time, we create a SSH/RSA key automatically through RStudio with the create RSA key button.



#### GIT HUB REPOSITORIES ####

# Key points
# To create a new GitHub repository and link it to an RStudio project, follow 2 steps:
#   
#   Step 1: Initialize a new repo on GitHub by clicking repository > new > choose a descriptive name.
# 
# Step 2: Connect to RStudio (next video).

#https://github.com/ballardnc/Homework-0.git

#### RSTUDIO, GIT, and GITHUB ####

# Key points
# In terminal: configure git 
# git config --global user.name "Your Name"
# git config --global user.email "your@email.com"
# In RStudio, create project > Version control > Git
# Git pane: status symbols and color
# Git actions:
#   pull: pull changes from remote repo (if you are in collaboration with others)
# add: stage files for commit; click on stage box under git pane
# commit: commit to the local repo; click on "commit" button under git pane; add a commit message
# push: push to the remote repo on Github
# .gitignore file: details check https://git-scm.com/docs/gitignore External link

## What worked for me...
usethis::create_github_token() # create the token
gitcreds::gitcreds_set() # enter the password & save to keychain access

#### BASICS OF UNIX ####
# Overview of Section 2: Basic Unix
# The Unix section discusses the basics of managing your filesystem from the terminal with Unix commands such as mv and rm. 
# 
# There is a two-part graded comprehension check at the end of the section. Part 2 is only available to Verified learners.
# 
# If you get stuck, we encourage you to search the discussion boards for the answer to your issue or ask us for help!
#   

# Useful Unix Commands and Notes on Paths
# Below, you will find a summary of Unix commands that will be covered in this section and the Advanced Unix section. The examples here and in videos refer to this hypothetical file system. You can download a copy of the image (stored in "~/Documents/UNIX-overview.png)

#install.packages("magick")
img <- magick::image_read('~/Documents/UNIX-overview.png')
img

# Useful Unix Commands
## Format used below...

# Command
## Description
### Examples

#ls
##List directory content

#mkdir dir
##Make a directory
###mkdir projects –make the directory projects
###mkdir docs –make the directory docs
###mkdir junk –make the directory junk

#rmdir dir
##Remove a directory (directory must be empty; otherwise use “rm”)
###rmdir junk –remove the directory junk

#cd dir
##Change directory
###cd /projects – move to the projects directory (an absolute path)
###cd projects – move to the projects directory, assuming we are already in the home directory (a relative path)

#cd ..
##Go up one directory to the parent directory
###cd ../.. – move up two parent directories from our current directory

#cd ~
##Go to the home directory

#cd -
##Go to whatever directory you just left

#pwd
##Print the present working directory

#Tab key
##Autocomplete
###cd d + tab – autocompletes to docs if it is the only directory that begins with d; or list the different options.

#mv file1 file2
##Move or rename files
###Warning –this is permanent, and you will not get a warning message if you are overwriting files.
###mv ~/docs/resumes/cv.tex ~/docs/reports/ –move the cv.tex file from the resume folder to the reports folder
###mv cv.tex resume.tex – rename cv.tex to resume.tex
###mv ~/docs/resumes ~ /docs/reports/ - move the resume folder into the reports folder

#cp file1 file2
##Copy file1 to file2
###cp ~ ~/docs/reports/ – make a copy of the cv.tex file from the resume folder in the reports folder

#rm file
##Delete file
##Warning – this is permanent! You cannot retrieve files from the recycling bin!
###rm ~/docs/resumes/cv.tex – delete the file cv.tex

#less file
##View file
###less ~/docs/resumes/cv.tex –open cv.tex in the less text viewer

#rm -r dir
##Remove recursively all folders in directory dir and the directory itself.

#ls -a
##List all directory content, including hidden files

#ls -l
##List all directory content in long form (including permissions, size and date)

#ls -t
##List all directory content in chronological order
###ls -lart – show more information for all files in reverse chronological order for your current directory

#man command
##Show the manual for the command. Note – this does not work for GitBash
###man ls – show the manual instructions for the command ls.

#help
##Show the manual for the command in GitBash
###ls --help – show help instructions for the command ls

#command1 | command2
##Pipe the results of command 1 to command 2
###man ls | less – show the help instructions for the command ls in the less viewer

#* (wildcard)
###ls *.html –list all the files ending in html in your current directory
###rm *.html – remove all files ending in html in your current directory

#? (any character)
###rm file.???.html – remove all files whose names follow the pattern; eg file-001.html, file-002.html etc.
###rm file.???.* – remove all files whose names follow the pattern regardless of their extension; eg file-001.html, file-002.csv, file-any.R, etc.

#$var
##>$ identifies a variable
###echo $HOME – print your home directory
###echo $SHELL – print your shell name

#export val=value
##Change the value of the variable val (Bash shell specific)

#open file (mac)file (windows)
##Opens a file or program
###open Report.Rmd – open Report.Rmd in RStudio

# Absolute path vs. relative path
# A full path specifies the location of a file from the root directory. It is independent of your present directory, and must begin with either a “/” or a “~”. In this example, the full path to our “project-1” file is: 
#   
#   /home/projects/project-1
# 
# A relative path is the path relative to your present working directory. If our present working directory is the “projects” folder, then the relative path to our “project-1” file is simply: 
#   
#   project-1
# 
# Path shortcuts
# One period “.” is your current working directory
# 
# Two periods “..” is the parent directory (up one from your present working directory) 
# 
# A tilde “~” is your home directory.
# 
# More path examples
# Example 1.     Your current working directory is ~/projects and you want to move to the figs directory in the project-1 folder
# 
# Solution 1: cd ~/projects/project-1/figs (absolute)
# Solution 2:  cd project-1/figs (relative)
# Example 2.     Your current working directory is ~/projects and you want to move to the reports folder in the docs directory
# 
# Solution 1: cd ~/dos/reports (absolute)
# Solution 2: cd ../docs/reports (relative)
# Example 3.     Your current working directory is ~/projects/project-1/figs and you want to move to the project-2 folder in the projects directory.
# 
# Solution 1: cd ~/projects/project-2 (absolute)
# Solution 2: cd ../../project-2 (relative)

#### ORGANIZING WITH UNIX ####

# Resources
# As noted in the video, you can learn more about Unix from a number of other resources:
#   
#   Codecademy External link
# 
# Quora list of Linux reference books External link

##### THE TERMINAL #####

# Key points
# The terminal helps to organize files in the system.
# On Mac, use utilities > terminal.
# On windows, use Git bash program.
# Use the keyboard to navigate the command line.
# Code: 
#   echo "hello world"

##### THE FILE SYSTEM #####
# Key points:
#   We refer to all the files, folders, and programs (executables) on your computer as the filesystem.
# Your filesystem is organized as a series of nested folders each containing files, folders, and executables. (see the visualization in the textbook)
# In Unix, folders are referred to as directories and directories that are inside other directories are often referred to as subdirectories. 
# The home directory is where all your stuff is kept.  There is a hierarchical nature to the file system.
# Note for Windows Users: The typical R installation will make your Documents directory your home directory in R. This will likely be different from your home directory in Git Bash. Generally, when we discuss home directories, we refer to the Unix home directory which for Windows, in this book, is the Git Bash Unix directory.

##### WORKING DORECTORY #####
# Key points
# The working directory is the current location.
# Each terminal window has a working directory associated with it.
# The "pwd" command will display your working directory. The "/" symbol separates directories, while the first "/" at the beginning of the path stands for the root directory. When a path starts with "/", it is a "full path", which finds the current directory from the root directory. "Relative path" will be introduced soon.
# "~" means the home directory.


