//
//  Item.swift
//  Shopping List
//
//  Created by max ortman on 2/12/19.
//  Copyright © 2019 john hersey high school. All rights reserved.
//

import Foundation
class Item {
    var name:String
    var quantity:Int
    init(name:String) {
        self.name = name
        self.quantity = 1
    }
    init(name:String, quantity:Int) {
        self.name = name
        self.quantity = quantity
    }
}
