//
//  LogInViewController.swift
//  TryToGuess
//
//  Created by Евгений Таран on 1/23/18.
//  Copyright © 2018 Zhenya Taran. All rights reserved.
//

import Foundation
import UIKit
import Quickblox

class LogInViewController: UIViewController {
    
    
    @IBOutlet weak var login: UITextField?
    @IBOutlet weak var password: UITextField?
    
    @IBAction func LogInButton(_ sender: Any) {
        logIn()
    }
    
    
    func logIn() {
        let user = QBUUser()
        user.login = login?.text
        user.password = password?.text
        
        QBRequest.logIn(withUserLogin: user.login!, password: user.password!, successBlock: { (response, user) in
            self.performSegue(withIdentifier: "SignInPressed", sender: self)
        }) { (response) in
            self.alert()
        }
    }
    func alert() {
        let alertField = UIAlertController(title: "Alert", message: "Invalid login or password.", preferredStyle: .alert  )
        alertField.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: nil))
        self.present(alertField, animated: true, completion: nil)
    }
}
