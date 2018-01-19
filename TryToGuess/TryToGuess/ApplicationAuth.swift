//
//  ApplicationAuth.swift
//  TryToGuess
//
//  Created by Евгений Таран on 1/19/18.
//  Copyright © 2018 Zhenya Taran. All rights reserved.
//

import Foundation
import Quickblox

class AuthQB {
    let KqBloxAppID:UInt = 67222
    let KqBloxAuthKey = "9cBNq6jLOkzyHjK"
    let KqBloxAuthSecret = "EWJkGNxF-qThOWn"
    
    func auth() {
        QBSettings.applicationID = KqBloxAppID
        QBSettings.authKey = KqBloxAuthKey
        QBSettings.authSecret = KqBloxAuthSecret
        
        QBSettings.logLevel = .nothing
    }
}
