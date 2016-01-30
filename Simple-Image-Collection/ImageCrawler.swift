//
//  ImageData.swift
//  Simple-Image-Collection
//
//  Created by Aree Oh on 1/29/16.
//  Copyright © 2016 Aree Oh. All rights reserved.
//

import UIKit

class ImageCrawler: NSObject {

    private let url = "http://www.gettyimagesgallery.com/collections/archive/slim-aarons.aspx"
    private var data: [Image] = [Image(name: "Muzi", src: "http://1.bp.blogspot.com/-cs8VQjbzOtc/VdRyLab050I/AAAAAAAARrY/_ntZGVLMFis/s1600/emot_063_x3.png"),
        Image(name: "Tube", src: "https://worldwalkermagazine.files.wordpress.com/2015/03/46ace1a0ee22b68ef269c0b49b8ecf7a_1400130634-76.png?w=676"),
        Image(name: "Apeach", src: "http://sehoonyolo.com/sehoonyolo/Automotive/Kakao%20talk%20air%20freshener/apea.jpg"),
        Image(name: "Tube", src: "https://www.90daykorean.com/wp-content/uploads/2015/04/Tube.png"),
        Image(name: "Con", src: "http://2.bp.blogspot.com/-njc-638DOWI/VD97iAMiV6I/AAAAAAAAoeI/kYVaaPbPsIs/s1600/kakao%2Bfriend%2Btube%2Bemo.jpg"),
        Image(name: "Jay-G", src: "http://girlandboything.com/wp-content/uploads/2014/10/KakaoTalk-Personality-GBT-1.jpg")]
    

    func crawl() -> ImageCrawler {

        return self
    }
    
    func clear() {
        self.data = []
    }
    
    func get() -> [Image] {
        return self.data
    }
    
}
