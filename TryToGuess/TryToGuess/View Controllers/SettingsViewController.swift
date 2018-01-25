//
//  SettingsViewController.swift
//  TryToGuess
//
//  Created by Евгений Таран on 1/25/18.
//  Copyright © 2018 Zhenya Taran. All rights reserved.
//

import Foundation
import UIKit
import Quickblox

class SettingsViewController: UIViewController {
    
    @IBAction func logOutButton(_ sender: UIButton) {
        logOut()
    }
    
    func logOut() {
        QBRequest.logOut(successBlock: { (response) in
            self.performSegue(withIdentifier: "LogOutButtonPressed", sender: self)
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
