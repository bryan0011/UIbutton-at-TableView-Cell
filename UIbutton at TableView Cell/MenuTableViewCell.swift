//
//  MenuTableViewCell.swift
//  UIbutton at TableView Cell
//
//  Created by Bryan Kuo on 2022/6/13.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    @IBOutlet weak var addButtton: UIButton!
    @IBOutlet weak var drinkLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
