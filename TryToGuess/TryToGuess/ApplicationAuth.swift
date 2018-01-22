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
    let KqBloxAuthKey = "JN3K4JPAwQN-PdV"
    let KqBloxAuthSecret = "RgTqGYyYkk8ekhE"
    let Kqbloxacckey = "z371AcrSKri8gq5p6iM2"
    func auth() {
        QBSettings.applicationID = KqBloxAppID
        QBSettings.authKey = KqBloxAuthKey
        QBSettings.authSecret = KqBloxAuthSecret
        QBSettings.logLevel = .nothing
        QBSettings.accountKey = Kqbloxacckey
    }
}
