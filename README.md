# Simple-image-collection
Application for iPhone. It shows the list or grid of images.

## Get Started

- Clone the git

- Libraries are managed via [Cocoapod](https://guides.cocoapods.org/using/getting-started.html)
 ->     `pod install`


## Functions 
- Crawls images from a static url
    - used [Kanna](https://github.com/tid-kijyun/Kanna#carthage) framework to parse HTML

- Loads images asynchronously
    - used [SDWebImage](https://github.com/rs/SDWebImage) framework

- Provides two modes to show image collections, List and Grid
    - List
        - refreshes(crawls and download images again) data by pulling down the list from the top
        - deletes image from the list
    
    - Grid
