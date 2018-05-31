## fast-manual-image-classifier

### Summary

This repo contains an R Shiny app to quickly classify JPEG images into categories. 
Using this tool likely requires some familiarity with R and Shiny.

### Motivation

This project is generally motivated by training image recognition models. 
Whether using transfer learning or training a model from scratch, labeled images are required for training. 
Specifically, these images often need to be organized by folder.
If you have manually label images and place them into folders by class, this tool may help you speed up this task.

### Files

- all folders initially contain a placeholder '.txt' file
- the 'images' folder will hold your unlabeled JPEG images
- the 'cat1', 'cat2', 'cat3', and 'junk' folders will hold your labeled images and can be customized
- the 'server_files' folder has files generated when deploying a Shiny app
- 'server.R' and 'ui.R' contain the server and UI logic for the app respectively
- 'fast_manual_image_classifier.Rproj' is the R project file for the Shiny app

### Usage

1. Put all JPEG images to be labeled in the 'images' folder. Do not change the name of this folder!!
2. Create an empty folder for every possible image class. In the repo, these folders are 'cat1', 'cat2', 'cat3', and 'junk'.
You can create any number of these folders.
3. Only follow step 3 if you changed the names of any folders or added new folders. Otherwise, proceed to step 4. This is the trickiest step. 
If you renamed the 'cat1' folder to 'category_1', you must go into 'server.R' and 'ui.R' and change all occurrences of 'cat1' to 'category_1'. 
Proceed the same way with any folder that you changed names for.
If you added a folder: you need to add a new button by copy/pasting one of the 'observeEvent' functions in 'server.R'. 
Replace the original folder name with your new folder name. In 'ui.R', add another 'actionButton' to the 
'sidebarPanel' with the desired display name and folder name. Do this for all folders you want to add.
If you deleted a folder: Delete the corresponding 'observeEvent' function in 'server.R' and 
delete the corresponding 'actionButton' in 'ui.R' section.
4. Click the 'Run App' button in RStudio. The app should show an image, the image name, and action buttons for each possible folder.
Click the desired folder for the image. The image is deleted from the 'images' folder and put into the folder you chose.
Rinse and repeat!


