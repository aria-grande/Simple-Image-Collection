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
    private var src:String
    
    init(name: String, src:String) {
        self.name = name
        self.src = src
    }
    
    func getSrc() -> String {
        return self.src
    }
    
    func getName() -> String {
        return self.name.isEmpty ? DEFAULT_TITLE : self.name
    }
}
