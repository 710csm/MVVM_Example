//
//  DataModel.swift
//  MVVM_iOS
//
//  Created by 최승명 on 2021/03/07.
//

import Foundation

class Person: NSObject {
    
    var name: String = ""
    var age: Int = 0
    var weight: Double = 0
    var height: Double = 0
    
    init(name: String, age: Int, weight: Double, height: Double) {
        self.name = name
        self.age = age
        self.weight = weight
        self.height = height
    }
}

class Model: NSObject {
    func getPeopleData() -> NSDictionary {
        return [
            "People":[
                ["name": "Kim", "age": 28, "weight": 80, "height": 180.0, ],
                ["name": "Lee", "age": 22, "weight": 70, "height": 167.5, ],
                ["name": "Park", "age": 20, "weight": 60, "height": 160.1, ],
                ["name": "Choi", "age": 26, "weight": 75, "height": 175.3, ]
            ],
        ]
    }
}
