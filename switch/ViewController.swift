//
//  ViewController.swift
//  switch
//
//  Created by thang on 8/26/17.
//  Copyright © 2017 thang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var inChuDatasource = manInChuDatasource()
    var inChuDelegate = manInChuDelegate()
    var inSoDatasource = manInSoDataSource()
    var inSoDelegate = manInSoDelegate()
    
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var segment: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func selectTable(_ sender: Any) {
        if segment.selectedSegmentIndex == 0 {
            myTableView.dataSource = inChuDatasource
        } else {
            myTableView.dataSource = inSoDatasource
        }
        myTableView.reloadData()
    }
    
}

