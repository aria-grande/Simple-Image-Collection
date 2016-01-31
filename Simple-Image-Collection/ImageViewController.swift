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
    private var images        = ImageCrawler().crawl().get()
    private let listViewSegue = "ListViewSegue"
    private let gridViewSegue = "GridViewSegue"

    private var listVC = ListViewController()
    private var gridVC = GridViewController()
    
    @IBOutlet weak var gridContainerView: UIView!
    @IBOutlet weak var listContainerView: UIView!
   
    @IBAction func changeDisplayType(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
            
            case 0:
                showGridView()
                gridVC.loadData(images)
            
            case 1:
                showListView()
                listVC.loadData(images)
            
            default:
                break
        }
    }
    
    override func viewDidLoad() {
        showGridView()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let segId = segue.identifier!
        
        if segId == listViewSegue {
            listVC = segue.destinationViewController as! ListViewController
            listVC.loadData(images)
        }
        else if segId == gridViewSegue {
            gridVC = segue.destinationViewController as! GridViewController
            gridVC.loadData(images)
        }
    }
    
    
    func showGridView() {
        gridContainerView.hidden = false
        listContainerView.hidden = true
    }
    
    func showListView() {
        listContainerView.hidden = false
        gridContainerView.hidden = true
    }
}
