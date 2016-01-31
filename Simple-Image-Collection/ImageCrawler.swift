//
//  ImageData.swift
//  Simple-Image-Collection
//
//  Created by Aree Oh on 1/29/16.
//  Copyright © 2016 Aree Oh. All rights reserved.
//

import Kanna

class ImageCrawler: NSObject {

    private let origin   = "http://www.gettyimagesgallery.com"
    private let pathname = "/collections/archive/slim-aarons.aspx"
    
    private var data:[Image] = []

    func crawl() -> ImageCrawler {
        
        let doc = Kanna.HTML(url: NSURL(string: origin + pathname)!, encoding: NSUTF8StringEncoding)!

        for imgWrapper in doc.css(".gallery-item-group") {
            let imgSrc = origin + imgWrapper.css("img")[0]["src"]!
            let caption = imgWrapper.css(".gallery-item-caption a").text!

            data.append(Image(name: caption, src: imgSrc))
        }
        
        return self
    }
    
    func removeAt(index:Int) {
        if data.count > index {
            data.removeAtIndex(index)
        }
    }
    
    func get() -> [Image] {
        return self.data
    }
    
}
