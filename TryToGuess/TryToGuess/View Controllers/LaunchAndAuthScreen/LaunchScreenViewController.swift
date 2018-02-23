//
//  LaunchScreenViewController.swift
//  TryToGuess
//
//  Created by Евгений Таран on 1/23/18.
//  Copyright © 2018 Zhenya Taran. All rights reserved.
//

import Foundation
import UIKit

class LaunchScreenViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func SignUpButton(_ sender: Any) {
        self.performSegue(withIdentifier: "SignUp", sender: self)
    }
    @IBAction func LogInButton(_ sender: Any) {
        self.performSegue(withIdentifier: "LogIN", sender: self)
    }
}
