# Simple-image-collection
Application for iPhone. It shows the list or grid of images.


## Functions 
- Crawls images from a static url
    - used Kanna framework to parse HTML

- Loads images asynchronously
    - used SDWebImage framework

- Provides two modes to show image collections, List and Grid
    - List
        - refreshes(crawls and download images again) data by pulling down the list from the top
        - possible to delete image from the list
    
    - Grid
