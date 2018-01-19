//
//  ViewController.swift
//  TryToGuess
//
//  Created by Евгений Таран on 1/16/18.
//  Copyright © 2018 Zhenya Taran. All rights reserved.
//

import UIKit
import Quickblox

class ViewController: UIViewController {

    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func singUP() {
        let user = QBUUser()
        user.login = login.text
        user.password = password.text
        
        QBRequest.signUp(user, successBlock: { (response, user) in
            self.performSegue(withIdentifier: "SignUpPressed", sender: self)
        }) { (response) in
        }
    }

    @IBAction func firstButtonPressed(_ sender: UIButton) {
        singUP()
    }

    @IBAction func SignUpButton(_ sender: Any) {
        self.performSegue(withIdentifier: "SignUP", sender: sender)
    }
    @IBAction func LogInButton(_ sender: Any) {
        self.performSegue(withIdentifier: "LogIN", sender: self)
    }
    @IBAction func dsa(_ sender: UIButton) {
            self.performSegue(withIdentifier: "ShowTestScreen", sender: sender)
    }
    
}

