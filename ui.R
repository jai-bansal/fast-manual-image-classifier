# This script contains the UI logic for the 
# fast manual image classifier.

# IMPORT LIBRARIES --------------------------------------------------------
library(shiny)

# DEFINE UI LOGIC ---------------------------------------------------------
# This section defines the UI logic.

# Define user interface:
shinyUI(fluidPage(
  
  # Title panel:
  titlePanel(title = 'Fast Manual Image Classifier'),
  
  # Panels:
  sidebarLayout(position = 'right',
                
                # Filters panel:
                sidebarPanel(h4('Folder', align = 'center'),
                             helpText('What folder should this image go into?'), 
                             actionButton('button1', 'cat1'), 
                             actionButton('button2', 'cat2'), 
                             actionButton('button3', 'cat3'), 
                             actionButton('junk', 'junk')),
                
                # Map panel:
                mainPanel(h4('Image', align = 'center'), 
                          imageOutput('image'), 
                          textOutput('file_name')
                )
  )
  
))


