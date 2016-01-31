//
//  ImageCollectionViewController.swift
//  Simple-Image-Collection
//
//  Created by Aree Oh on 1/29/16.
//  Copyright © 2016 Aree Oh. All rights reserved.
//

import UIKit

class GridViewController: UICollectionViewController {

    // MARK: - variables and struct
    private var images:NSMutableArray   = []
    private let gridCellReuseIdentifier = "GridCell"
    
    @IBOutlet var gridView: UICollectionView!
    
    
    // MARK: - life cycle
    func loadData(images:NSMutableArray) {
        self.images = images
        self.gridView?.reloadData()
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.images.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(gridCellReuseIdentifier, forIndexPath: indexPath) as! GridViewCell
        
        let image = images[indexPath.row] as! Image

        cell.gridImageView.sd_setImageWithURL(NSURL(string:image.getSrc())!, placeholderImage: UIImage(named: image.getName()))
        cell.gridImageTitle.text = image.getName()
        
        return cell
    }
}
