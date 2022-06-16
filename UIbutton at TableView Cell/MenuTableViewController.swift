//
//  MenuTableViewController.swift
//  UIbutton at TableView Cell
//
//  Created by Bryan Kuo on 2022/6/13.
//

import UIKit

class MenuTableViewController: UITableViewController {
    
    let menus = ["春熙柳橙翡翠","愛文芒果冰沙","愛文翡翠","番茄梅","芭樂梅"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    //    顯示 menus 的 cell 數量
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menus.count
    }

//    顯示 cell 的內容
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell", for: indexPath) as! MenuTableViewCell

        let menu = menus[indexPath.row]
        cell.drinkLabel.text = menu

        return cell
    }
    

    @IBSegueAction func showDrinkName(_ coder: NSCoder, sender: Any?) -> DrinkLabelViewController? {
        
        let button = sender as? UIButton
        if let point: CGPoint = button?.convert(.zero, to: tableView), let indexpath = tableView.indexPathForRow(at: point) {
            return DrinkLabelViewController(coder: coder, drinkName: menus[indexpath.row])
        } else {
            return nil
        }
    
    }
}
