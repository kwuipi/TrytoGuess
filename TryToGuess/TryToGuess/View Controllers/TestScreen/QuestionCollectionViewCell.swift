//
//  QuestionCollectionViewCell.swift
//  TryToGuess
//
//  Created by Евгений Таран on 2/22/18.
//  Copyright © 2018 Zhenya Taran. All rights reserved.
//

import Foundation
import UIKit

class QuestionCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var questionText: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.questionText.text = nil 
    }
}
