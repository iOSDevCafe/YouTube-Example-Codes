//
//  Cell.swift
//  TableViewControllers
//
//  Created by iOS Café on 19/08/2017.
//  Copyright © 2017 iOS Café. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {

    @IBOutlet weak var myLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
