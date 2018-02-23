//
//  TestViewController.swift
//  TryToGuess
//
//  Created by Евгений Таран on 2/6/18.
//  Copyright © 2018 Zhenya Taran. All rights reserved.
//

import Foundation
import UIKit
import Quickblox

class TestViewController: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet weak var questionCollection: UICollectionView!
    var questionCollectionViewLayout: CollectionViewCellLayout!
    
    let classNameQB = "Tests"
    let id1 = "5a72e119a28f9a0793f1fddd"
    let questions = "Questions"
    
    private var TestId: String!
    let customObject = QBCOCustomObject()
    var questionsArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getQestuions()
        questionCollectionViewLayout = CollectionViewCellLayout()
        questionCollection.collectionViewLayout = questionCollectionViewLayout
        questionCollection.backgroundColor = .white
    
    }
    
    func getQestuions() {
        QBRequest.object(withClassName: classNameQB, id: id1, successBlock: { [weak self](response, customObject) in
            guard let weakSelf = self else { return }
            if let field = customObject?.fields[self?.questions] as? [String] {
                weakSelf.questionsArray.append(contentsOf: field)
                weakSelf.questionCollection.reloadData()
            }
        }) { (response) in
            self.alert(message: "something wrong")
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return questionsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = questionCollection.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! QuestionCollectionViewCell
        let question = questionsArray[indexPath.row]
        cell.questionText.text = question
        return cell
    }
    
}

