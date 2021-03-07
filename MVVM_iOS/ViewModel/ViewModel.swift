//
//  ViewModel.swift
//  MVVM_iOS
//
//  Created by 최승명 on 2021/03/07.
//

import Foundation

class ViewModel: NSObject {
    let model: Model = Model()
    var peopleData: NSArray!
    
    override init() {
        let data1 = model.getPeopleData()["People"] as! NSArray
        let data2 = NSMutableArray()
        
        for i in 0..<data1.count {
            let tmpData = data1[i] as! NSDictionary
            let name = tmpData["name"] as! String
            let age = tmpData["age"] as! Int
            let weight = tmpData["weight"] as! Double
            let height = tmpData["height"] as! Double
            
            data2.add(Person(name: name, age: age, weight: weight, height: height))
        }
        
        peopleData = NSArray(array: data2)
    }
}
