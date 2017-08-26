//
//  manInChu.swift
//  switch
//
//  Created by thang on 8/26/17.
//  Copyright © 2017 thang. All rights reserved.
//

import UIKit

class manInChu: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    var arrayString = ["anh" ,"anh" ,"anh" ,"anh" ,"anh" ,"anh" ,"anh" ,"anh" ,"anh" ,"anh" ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayString.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath)
        
        cell.textLabel?.text = arrayString[indexPath.row]
        
        return cell
    }
    
}
