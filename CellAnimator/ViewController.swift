//
//  ViewController.swift
//  CellAnimator
//
//  Created by mr.scorpion on 12/09/2015.
//  Copyright © 2015 mr.scorpion. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var objects: [NSDate] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 0 ..< 100 {
            objects.append(NSDate())
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table View
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        let object = objects[indexPath.row] as NSDate
        cell.textLabel?.text = object.description
        return cell
    }
    
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return false
    }
    
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
//        CellAnimator.animateCell(cell, withTransform: CellAnimator.TransformWave, andDuration: 1)
//        CellAnimator.animateCell(cell, withTransform: CellAnimator.TransformTilt, andDuration: 1)
        CellAnimator.animateCell(cell, withTransform: CellAnimator.TransformHelix, andDuration: 1) // *
//        CellAnimator.animateCell(cell, withTransform: CellAnimator.TransformFlip, andDuration: 1)
//        CellAnimator.animateCell(cell, withTransform: CellAnimator.TransformFan, andDuration: 1)
//        CellAnimator.animateCell(cell, withTransform: CellAnimator.TransformCurl, andDuration: 1)
//        CellAnimator.animateCell(cell, withTransform: CellAnimator.TransformTipIn, andDuration: 1)
    }
    
}