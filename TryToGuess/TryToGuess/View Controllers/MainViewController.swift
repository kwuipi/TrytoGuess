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
  
//    let customObject = QBCOCustomObject()
    var field = [String]()
    var testName = Test.getTest
    var table: UITableView?
    let classNameQB = "Tests"
    let id1 = ["5a72e119a28f9a0793f1fddd", "5a72e128a28f9a135bf1fd20"]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //get()
        table = UITableView()
        view.addSubViews(table!, margins: UIEdgeInsets.zero)
        table?.dataSource = self
    }
    
//    func get() {
//
//        QBRequest.objects(withClassName: classNameQB, ids: id1, successBlock: { (response, objects) in
//            DispatchQueue.main.async {
//                for object in objects! {
//                    if let customObj = object as? QBCOCustomObject {
//                        if let fields = customObj.fields["TestName"] as? String  {
//                            self.field.append(fields)
//                            self.table?.reloadData()
//                        }
//                    }
//                }
//            }
//        }) { (response) in
//
//        }
//
//    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let feil = testName[indexPath.row]
        cell.textLabel?.text = "\(feil) "
        return cell
    }
    
}
