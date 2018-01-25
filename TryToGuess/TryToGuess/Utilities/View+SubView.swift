//
//  View+SubView.swift
//  TryToGuess
//
//  Created by Евгений Таран on 1/25/18.
//  Copyright © 2018 Zhenya Taran. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func addSubViews(_ view: UIView, margins: UIEdgeInsets = UIEdgeInsets.zero) {
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        view.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        view.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
    }
}
