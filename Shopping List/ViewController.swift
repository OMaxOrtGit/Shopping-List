//
//  ViewController.swift
//  Shopping List
//
//  Created by max ortman on 2/8/19.
//  Copyright © 2019 john hersey high school. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet var newItemTextView: UITextField!
    
    @IBOutlet var tableView: UITableView!
    
    var items:[Item] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        let itemOne = Item(name: "Kyle's hair is better", quantity: 2)
        let itemTwo = Item(name: "Ryan's hair is worce")
        items = [itemOne, itemTwo]
        let itemThree = Item(name: "Fact")
        items += [itemThree]

    }

    @IBAction func newItemButtonPress(_ sender: Any) {
        if let newItemName = newItemTextView.text, newItemName != "" {
            let newItem = Item(name: newItemName)
            items.append(newItem)
            tableView.reloadData()
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") {
            let itemName = items[indexPath.row].name
            cell.textLabel?.text = itemName
            return cell
        } else {
            return UITableViewCell()
        }
    }
}
