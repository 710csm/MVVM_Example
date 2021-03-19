//
//  ViewModel.swift
//  MVVM_iOS
//
//  Created by 최승명 on 2021/03/07.
//

import Foundation

class ViewModel: NSObject {
    private let model: Model = Model()
    public var peopleData: Array<Any>
    
    override init() {
        let data1 = model.getPeopleData()["People"] as! Array<Any>
        var data2 = Array<Any>()
        
        for i in 0..<data1.count {
            let tmpData = data1[i] as! Dictionary<String, Any>
            let name = tmpData["name"] as! String
            let age = tmpData["age"] as! Int
            let weight = tmpData["weight"] as! Int
            let height = tmpData["height"] as! Int
            
            data2.append(Person(name: name,
                             age: age,
                             weight: weight,
                             height: height))
        }
        
        peopleData = Array(data2)
    }
}
