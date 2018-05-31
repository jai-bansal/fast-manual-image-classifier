# This script contains the serverlogic for the 
# fast manual image classifier.

# IMPORT LIBRARIES --------------------------------------------------------
library(shiny)

# SET APP VARIABLES -------------------------------------------------------
# This section sets variables that apply to the whole app and don't change.

  # Set image display size variables.
  display_width = 250
  display_height = 350

# DEFINE SERVER LOGIC -----------------------------------------------------
# This section defines the server logic.

# Define server logic:
shinyServer(function(input, output, session)

{
  
  # Display image to be categorized.
  output$image = renderImage({
    
      # Get first image in folder.
      im_name = list.files('images', pattern = '.jpg')[1]
      
      return(list(src = paste0('images/', im_name), 
                  filetype = 'images/jpeg', 
                  width = display_width, 
                  height = display_height))
    
  }, 
  deleteFile = FALSE)
  
  # Print image file name.
  output$file_name = renderText({
    
    # Show file name if JPEG image exists.
    if (length(list.files('images', pattern = '.jpg')) > 0) {
      
      return(paste0('File Name: ', list.files('images', pattern = '.jpg')[1]))
      
    } else(return('Congrats you have tagged them all.'))
    
    })

  # Program action button for category 1.
  observeEvent(input$button1, 
               {
                 
                 # Get first image in folder.
                 im_name = list.files('images', pattern = '.jpg')[1]
                 
                 file.rename(from = paste0('images/', im_name), 
                             to = paste0('cat1/', im_name))
                 
                 # Update image
                 output$image = renderImage({
                   
                 # Get first image in folder.
                 im_name = list.files('images', pattern = '.jpg')[1]
                 
                 return(list(src = paste0('images/', im_name), 
                             filetype = 'images/jpeg', 
                             width = display_width, 
                             height = display_height))
                   
                 }, 
                 deleteFile = FALSE)
                 
                 # Update text.
                 output$file_name = renderText({
                   
                   # Show file name if JPEG image exists.
                   if (length(list.files('images', pattern = '.jpg')) > 0) {
                     
                     return(paste0('File Name: ', list.files('images', pattern = '.jpg')[1]))
                     
                   } else(return('Congrats you have tagged all images.'))
                   
                 })
                 
               })
  
  # Program action button for category 2.
  observeEvent(input$button2, 
               {
                 
                 # Get first image in folder.
                 im_name = list.files('images', pattern = '.jpg')[1]
                 
                 file.rename(from = paste0('images/', im_name), 
                             to = paste0('cat2/', im_name))
                 
                 # Update image
                 output$image = renderImage({
                   
                   # Get first image in folder.
                   im_name = list.files('images', pattern = '.jpg')[1]
                   
                   return(list(src = paste0('images/', im_name), 
                               filetype = 'images/jpeg', 
                               width = display_width, 
                               height = display_height))
                   
                 }, 
                 deleteFile = FALSE)
                 
                 # Update text.
                 output$file_name = renderText({
                   
                   # Show file name if JPEG image exists.
                   if (length(list.files('images', pattern = '.jpg')) > 0) {
                     
                     return(paste0('File Name: ', list.files('images', pattern = '.jpg')[1]))
                     
                   } else(return('Congrats you have tagged all images.'))
                   
                 })
                 
               })
  
  # Program action button for category 3.
  observeEvent(input$button3, 
               {
                 
                 # Get first image in folder.
                 im_name = list.files('images', pattern = '.jpg')[1]
                 
                 file.rename(from = paste0('images/', im_name), 
                             to = paste0('cat3/', im_name))
                 
                 # Update image
                 output$image = renderImage({
                   
                 # Get first image in folder.
                 im_name = list.files('images', pattern = '.jpg')[1]
                 
                 return(list(src = paste0('images/', im_name), 
                             filetype = 'images/jpeg', 
                             width = display_width, 
                             height = display_height))
                   
                 }, 
                 deleteFile = FALSE)
                 
                 # Update text.
                 output$file_name = renderText({
                   
                   # Show file name if JPEG image exists.
                   if (length(list.files('images', pattern = '.jpg')) > 0) {
                     
                     return(paste0('File Name: ', list.files('images', pattern = '.jpg')[1]))
                     
                   } else(return('Congrats you have tagged all images.'))
                   
                 })
                 
               })
  
  # Program action button for junk images.
  observeEvent(input$junk, 
               {
                 
                 # Get first image in folder.
                 im_name = list.files('images', pattern = '.jpg')[1]
                 
                 file.rename(from = paste0('images/', im_name), 
                             to = paste0('junk/', im_name))
                 
                 # Update image
                 output$image = renderImage({
                   
                 # Get first image in folder.
                 im_name = list.files('images', pattern = '.jpg')[1]
                 
                 return(list(src = paste0('images/', im_name), 
                             filetype = 'images/jpeg', 
                             width = display_width, 
                             height = display_height))
                   
                 }, 
                 deleteFile = FALSE)
                 
                 # Update text.
                 output$file_name = renderText({
                   
                   # Show file name if JPEG image exists.
                   if (length(list.files('images', pattern = '.jpg')) > 0) {
                     
                     return(paste0('File Name: ', list.files('images', pattern = '.jpg')[1]))
                     
                   } else(return('Congrats you have tagged all images.'))
                   
                 })
                 
               })
  
}
)
  
