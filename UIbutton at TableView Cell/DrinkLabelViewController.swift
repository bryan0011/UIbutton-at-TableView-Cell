//
//  DrinkLabelViewController.swift
//  UIbutton at TableView Cell
//
//  Created by Bryan Kuo on 2022/6/16.
//

import UIKit

class DrinkLabelViewController: UIViewController {
    
    let drinkName: String
    
    init?(coder: NSCoder, drinkName: String) {
        self.drinkName = drinkName
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var drinkNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        drinkNameLabel.text = drinkName

        
    }
    

}
