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

class MainViewController: UIViewController {
  
  
    @IBAction func showScreenWithTest(_ sender: Any) {
         let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TestViewController") as! TestViewController
        present(vc, animated: true, completion: nil)
    }
    var field = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        getTestName()
    }
    
    let classNameQB = "Tests"
    let ids = ["5a72e119a28f9a0793f1fddd", "5a72e128a28f9a135bf1fd20"]
    let testFieldName = "TestName"
    func getTestName() {
        QBRequest.objects(withClassName: classNameQB, ids: ids, successBlock: { (response, objects) in
            for object in objects! {
                if let customObj = object as? QBCOCustomObject {
                    if let fields = customObj.fields[self.testFieldName] as? String {
                      
                    }
                }
            }
        }) { (response) in
            
        }

    }
}
