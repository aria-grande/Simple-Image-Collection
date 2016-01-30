//
//  ImageCollectionViewController.swift
//  Simple-Image-Collection
//
//  Created by Aree Oh on 1/29/16.
//  Copyright © 2016 Aree Oh. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class ImageCollectionViewController: UICollectionViewController {

    // MARK: - variables
//    var images = ImageData.getData()
    var images =
    [Image(name: "Muzi", src: "http://1.bp.blogspot.com/-cs8VQjbzOtc/VdRyLab050I/AAAAAAAARrY/_ntZGVLMFis/s1600/emot_063_x3.png"),
        Image(name: "Tube", src: "https://worldwalkermagazine.files.wordpress.com/2015/03/46ace1a0ee22b68ef269c0b49b8ecf7a_1400130634-76.png?w=676"),
        Image(name: "Apeach", src: "http://sehoonyolo.com/sehoonyolo/Automotive/Kakao%20talk%20air%20freshener/apea.jpg"),
        Image(name: "Tube", src: "https://www.90daykorean.com/wp-content/uploads/2015/04/Tube.png"),
        Image(name: "Con", src: "http://2.bp.blogspot.com/-njc-638DOWI/VD97iAMiV6I/AAAAAAAAoeI/kYVaaPbPsIs/s1600/kakao%2Bfriend%2Btube%2Bemo.jpg"),
        Image(name: "Jay-G", src: "http://girlandboything.com/wp-content/uploads/2014/10/KakaoTalk-Personality-GBT-1.jpg")]
    

    // MARK: - life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UICollectionViewDataSource
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return images.count
    }

    struct Storyboard {
        static let cellReuseIdentifier = "image"
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(Storyboard.cellReuseIdentifier, forIndexPath: indexPath) as! ImageCollectionViewCell
    
        // Configure the cell
        let image = images[indexPath.row]
        let url = NSURL(string:image.getSrc())!
        let data = NSData(contentsOfURL: url)!
        
        cell.imageView.image = UIImage(data: data)
        cell.caption.text = image.getName()
        
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
