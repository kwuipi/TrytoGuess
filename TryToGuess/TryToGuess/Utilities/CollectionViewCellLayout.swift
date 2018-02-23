//
//  CellLayout.swift
//  TryToGuess
//
//  Created by Евгений Таран on 2/22/18.
//  Copyright © 2018 Zhenya Taran. All rights reserved.
//

import Foundation
import UIKit

class CollectionViewCellLayout: UICollectionViewFlowLayout {
    override init() {
        super.init()
        layOut()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layOut()
    }
    override var itemSize: CGSize{
        set{}
        get {
            let numberOfColumns: CGFloat = 5
            let itemWidth = (self.collectionView!.frame.width)
            return CGSize(width: itemWidth, height: itemWidth)
        }
    }
    
    func layOut() {
        minimumLineSpacing = 1
        minimumLineSpacing = 1
        scrollDirection = .horizontal
    }
}


