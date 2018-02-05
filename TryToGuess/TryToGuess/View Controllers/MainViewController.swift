//
//  MainViewController.swift
//  TryToGuess
//
//  Created by Евгений Таран on 1/25/18.
//  Copyright © 2018 Zhenya Taran. All rights reserved.
//

import Foundation
import UIKit
import Quickblox

class MainViewController: UIViewController, UITableViewDataSource {
  
    let customObject = QBCOCustomObject()
    var field = [String]()
    
    var table: UITableView?
    let classNameQB = "Tests"
    let id1 = ["5a72e119a28f9a0793f1fddd", "5a72e128a28f9a135bf1fd20"]
    
    override func viewDidLoad() {
         super.viewDidLoad()
        table = UITableView()
        view.addSubViews(table!, margins: UIEdgeInsets.zero)
        table?.dataSource = self
        get()
    }
    
    func get() {
        
//        QBRequest.object(withClassName: classNameQB, id: id1, successBlock: { [weak self] (response, customObject) in
//            guard let weakSelf = self else { return }
//            if let fields = customObject?.fields["TestName"] as? [String] {
//                weakSelf.field.append(contentsOf: fields)
//                weakSelf.table?.reloadData()
//            }
//        }) { (response) in
//
//        }
        
        QBRequest.objects(withClassName: classNameQB, ids: id1, successBlock: { (response, <#[Any]?#>) in
            <#code#>
        }) { (response) in
            <#code#>
        }
      
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return field.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let feil = field[indexPath.row]
        cell.textLabel?.text = "\(feil) "
        return cell
    }
    
}
