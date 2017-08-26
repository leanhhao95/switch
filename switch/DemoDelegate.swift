//
//  DemoDelegate.swift
//  switch
//
//  Created by thang on 8/26/17.
//  Copyright © 2017 thang. All rights reserved.
//

import UIKit

class DemoDelegate: UITableViewController {
    var inSoDatasource = manInSoDataSource()
    var inSoDelegate = manInSoDelegate()
    
    var inChuDatasource = manInChuDatasource()
    var inChuDelegate = manInChuDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = inSoDelegate
        tableView.dataSource = inSoDatasource
        
        
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath) as! CustomCell
        
       
        
        return cell

}
}
