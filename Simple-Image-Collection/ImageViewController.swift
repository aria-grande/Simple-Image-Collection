//
//  ImageViewController.swift
//  Simple-Image-Collection
//
//  Created by Aree Oh on 1/31/16.
//  Copyright © 2016 Aree Oh. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    // MARK: - variables and struct
    private var images = [Image]()
    private let listViewSegue = "ListViewSegue"
    private let gridViewSegue = "GridViewSegue"

    @IBOutlet weak var gridContainerView: UIView!
    @IBOutlet weak var listContainerView: UIView!
   
    @IBAction func changeDisplayType(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
            //TODO: reload data
            
            // when list type is clicked
            case 0:
                listContainerView.hidden = false
                gridContainerView.hidden = true
            
            // when grid type is clicked
            case 1:
                gridContainerView.hidden = false
                listContainerView.hidden = true
            
            default:
                break
        }
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        images = ImageCrawler().crawl().get()
        
        let segId = segue.identifier!
        if segId == listViewSegue {
            let listVC = segue.destinationViewController as! ListViewController
            listVC.loadData(images)
        }
        else if segId == gridViewSegue {
            let gridVC = segue.destinationViewController as! GridViewController
            gridVC.loadData(images)
        }
    }
}
