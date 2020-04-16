//
//  TableViewCell.swift
//  lab5
//
//  Created by Samuel Arogundade on 2020-02-18.
//  Copyright © 2020 Samuel Arogundade. All rights reserved.
//

import Foundation
import UIKit

class TableViewCell : UITableViewCell
{
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
