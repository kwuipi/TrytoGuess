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
            self.alert(message: "Some Problems")
        }
    }
}
