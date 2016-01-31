//
//  ListViewController.swift
//  Simple-Image-Collection
//
//  Created by Aree Oh on 1/31/16.
//  Copyright © 2016 Aree Oh. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {

    // MARK: - variables and struct
    @IBOutlet var listView: UITableView!
    
    let listCellReuseIdentifier = "ListCell"
    var images:[Image] = []
    
    // MARK: - life cycle
    func loadData(images: [Image]) {
        self.images = images
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(listCellReuseIdentifier, forIndexPath: indexPath) as! ListViewCell
        
        let image = images[indexPath.row]
        let url   = NSURL(string: image.getSrc())!
        let data  = NSData(contentsOfURL: url)!
        
        cell.listImageView.image = UIImage(data: data)
        cell.listImageTitle.text = image.getName()
        
        return cell
    }
}
