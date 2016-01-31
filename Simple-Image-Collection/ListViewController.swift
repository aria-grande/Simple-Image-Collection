//
//  ListViewController.swift
//  Simple-Image-Collection
//
//  Created by Aree Oh on 1/31/16.
//  Copyright © 2016 Aree Oh. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {

    // MARK: - variables
    @IBOutlet var listView: UITableView!
    
    let listCellReuseIdentifier = "ListCell"
    var images:[Image] = []
    

    func handleRefresh(refreshControl: UIRefreshControl) {
        self.listView.reloadData()
        refreshControl.endRefreshing()
    }
    
    func loadData(images: [Image]) {
        self.images = images
    }
    
    // MARK: - life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.refreshControl?.addTarget(self, action:"handleRefresh:", forControlEvents: UIControlEvents.ValueChanged)
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            images.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(listCellReuseIdentifier, forIndexPath: indexPath) as! ListViewCell
        
        let image = images[indexPath.row]

        cell.listImageView.image = UIImage(data: image.getImageData())
        cell.listImageTitle.text = image.getName()
        
        return cell
    }
}
