//
//  Image.swift
//  Simple-Image-Collection
//
//  Created by Aree Oh on 1/29/16.
//  Copyright © 2016 Aree Oh. All rights reserved.
//

import UIKit

class Image: NSObject {

    private let DEFAULT_TITLE = "No Title"
    
    private var name: String
    private var imageData: NSData
    
    init(name: String, imageData:NSData) {
        self.name = name
        self.imageData = imageData
    }
    
    func getImageData() -> NSData {
        return self.imageData
    }
    
    func getName() -> String {
        return self.name.isEmpty ? DEFAULT_TITLE : self.name
    }
}
