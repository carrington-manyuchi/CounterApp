//
//  TableViewViewController.swift
//  CounterApp
//
//  Created by Manyuchi, Carrington C on 2026/02/21.
//

import UIKit

struct User {
    let name: String
    let shoppingItems: [ShoppingItem]
}

struct ShoppingItem {
    let title: String
    let subTitle: String
    let image: UIImage
}

class TableViewViewController: UITableViewController {
    var users: [User] = [
        User(name: "Paul", shoppingItems: [
            ShoppingItem(title: "Eggs", subTitle: "Buy 6 eggs", image: UIImage(systemName: "star.fill")!),
            ShoppingItem(title: "Apples", subTitle: "Buy as many as you can", image: UIImage(systemName: "star.fill")!),
            ShoppingItem(title: "Bananas", subTitle: "Ripe bananas only", image: UIImage(systemName: "star.fill")!)
        ]),
        User(name: "Laura", shoppingItems: [
            ShoppingItem(title: "Mango", subTitle: "Mangos are delicius", image: UIImage(systemName: "star.fill")!),
            ShoppingItem(title: "Bananas", subTitle: "Buy as many as you can", image: UIImage(systemName: "star.fill")!)
        ])
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        return users.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users[section].shoppingItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if indexPath.row % 2 == 1 {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "shoppingCell", for: indexPath)
//            cell.textLabel?.text = "Shopping Item"
//            cell.detailTextLabel?.text = "Shopping description"
//            cell.imageView?.image = UIImage(systemName: "star")
//            return cell
//        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "shoppingCell", for: indexPath)
        let shoppingItem = users[indexPath.section].shoppingItems[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = shoppingItem.title
        content.secondaryText = shoppingItem.subTitle
        content.image = shoppingItem.image
        cell.contentConfiguration =  content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return users[section].name
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "\(users[section].name) has \(users[section].shoppingItems.count) items"
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

}
