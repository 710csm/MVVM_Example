//
//  MVVMViewController.swift
//  MVVM_iOS
//
//  Created by 최승명 on 2021/03/07.
//

import UIKit

class MVVMViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let mvvmCell = UINib(
            nibName: "MVVMTableViewCell",
            bundle: nil
        )
        tableView.register(
            mvvmCell,
            forCellReuseIdentifier: "MVVMTableViewCell"
        )
    }
}

extension MVVMViewController:  UITableViewDelegate,
                               UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.peopleData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let person = viewModel.peopleData[indexPath.row] as! Person
        let cell = tableView.dequeueReusableCell(withIdentifier: "MVVMTableViewCell", for: indexPath) as! MVVMTableViewCell
        cell.makeCell(person)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90.0
    }
}
