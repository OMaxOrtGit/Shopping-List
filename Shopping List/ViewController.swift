//
//  ViewController.swift
//  Shopping List
//
//  Created by max ortman on 2/8/19.
//  Copyright © 2019 john hersey high school. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet var newItemTextView: UINavigationItem!
    
    @IBOutlet var tableView: UITableView!
    
    var items:[Item] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        let itemOne = Item(name: "Kyle's hair is better")
        let itemTwo = Item(name: "Ryan's hair is worce")
        items = [itemOne, itemTwo]
    }

    @IBAction func newItemButtonPress(_ sender: Any) {
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") {
            cell.textLabel?.text = "Hello"
            return cell
        } else {
            return UITableViewCell()
        }
    }
}
