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
    
    override func viewDidLoad() {
         super.viewDidLoad()
        table = UITableView()
        view.addSubViews(table!, margins: UIEdgeInsets.zero)
        table?.dataSource = self
        get()
    }
    
    func get() {
        
        QBRequest.object(withClassName: "test", id: "5a6989b5a28f9a2601f1fecb", successBlock: { [weak self] (response, customObject) in
            guard let weakSelf = self else { return }
            if let fields = customObject?.fields["tests"] as? [String] {
                weakSelf.field.append(contentsOf: fields)
                weakSelf.table?.reloadData()
            }
        }) { (response) in
            
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return field.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let feil = field[indexPath.row]
        cell.textLabel?.text = "a: \(feil) "
        return cell
    }
    
}
