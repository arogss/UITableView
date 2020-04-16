//
//  TableVC.swift
//  lab5
//
//  Created by Samuel Arogundade on 2020-02-18.
//  Copyright © 2020 Samuel Arogundade. All rights reserved.
//

import Foundation
import UIKit

class TableVC : UITableViewController
{
    var cell : UITableViewCell?
    var assets:[Asset] = []
    
    struct Asset {
        var image: UIImage
        var title: String
    }
    
    struct Images {
        static let fb = UIImage(named: "facebook")!
        static let fId = UIImage(named: "faceId")!
        static let google = UIImage(named: "Google")!
        static let twit = UIImage(named: "Twitter")!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //1. register the cell
        self.tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        assets = fetchAsset()
    }
    
    //2. specify what row the cell will go
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //3. create the cell and add to the table based on index
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        
        let asset = assets[indexPath.row]
        cell.imageView?.image = asset.image
        cell.textLabel?.text = asset.title
        
        return cell
    }
    
    func fetchAsset() -> [Asset] {
        let i1 = Asset(image: Images.fb, title: "Facebook")
        let i2 = Asset(image: Images.fId, title: "Face Id")
        let i3 = Asset(image: Images.google, title: "Google")
        let i4 = Asset(image: Images.twit, title: "Twitter")
        
        return [i1, i2, i3, i4]
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return assets.count
    }
}
