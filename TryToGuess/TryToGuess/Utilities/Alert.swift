//
//  Alert.swift
//  TryToGuess
//
//  Created by Евгений Таран on 2/3/18.
//  Copyright © 2018 Zhenya Taran. All rights reserved.
//

import Foundation
import UIKit

extension UIAlertController {
    func alert(message: String) {
        let alertField = UIAlertController(title: "Alert", message: message, preferredStyle: .alert  )
        alertField.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: nil))
        self.present(alertField, animated: true, completion: nil)
    }
}

