//
//  User.swift
//  TryToGuess
//
//  Created by Евгений Таран on 1/23/18.
//  Copyright © 2018 Zhenya Taran. All rights reserved.
//

import Foundation
import Quickblox
import UIKit

protocol UserDelegate: class {
    func signUP()
}

class User {
    //let view = SignUpViewController()
    let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
    
    func signUP() {
        let user = QBUUser()
        user.login = view.login?.text
        user.password = view.password?.text

        QBRequest.signUp(user, successBlock: { (response, user) in
            DispatchQueue.main.async {
                self.view.performSegue(withIdentifier: "SignUpPressed", sender: self)
            }
        }) { (response) in
        }
    }

}


