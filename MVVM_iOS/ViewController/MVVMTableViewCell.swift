//
//  MVVMTableViewCell.swift
//  MVVM_iOS
//
//  Created by 최승명 on 2021/03/07.
//

import UIKit

class MVVMTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var etc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func makeCell(_ person: Person) {
        name.text = person.name
        age.text = "\(person.age)"
        etc.text = "\(person.height) / \(person.age)"
    }
    
}
