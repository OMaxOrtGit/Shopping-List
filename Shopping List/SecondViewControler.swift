//
//  SecondViewControler.swift
//  Shopping List
//
//  Created by max ortman on 2/14/19.
//  Copyright © 2019 john hersey high school. All rights reserved.
//

import UIKit

class SecondViewControler: UIViewController {
    @IBOutlet var quantityLabel: UILabel!
    var passedItem: Item
    override func viewDidLoad() {
        super.viewDidLoad()
        super.title = passedItem.name
        quantityLabel.text = "quantity:\(passedItem.quantity)"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
