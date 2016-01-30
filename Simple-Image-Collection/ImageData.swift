//
//  ImageData.swift
//  Simple-Image-Collection
//
//  Created by Aree Oh on 1/29/16.
//  Copyright © 2016 Aree Oh. All rights reserved.
//

import UIKit

class ImageData: NSObject {

    private var data: [Image] = [Image(name: "Leonard", src: "http://www.sheldon-cooper.fr/wp-content/uploads/2014/08/Leonard-Hofstadter-%C3%A9nerv%C3%A9.jpg")]
    
    
    func addData(newImage: Image) {
        self.data.append(newImage)
    }
    
    func removeDataAt(index: Int) {
        self.data.removeAtIndex(index)
    }
    
    func clearData() {
        self.data = []
    }
    
    func getData() -> [Image] {
        return self.data
    }
    
}
