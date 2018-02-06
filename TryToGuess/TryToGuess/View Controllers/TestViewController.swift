//
//  TestViewController.swift
//  TryToGuess
//
//  Created by Евгений Таран on 2/6/18.
//  Copyright © 2018 Zhenya Taran. All rights reserved.
//

import Foundation
import UIKit

class TestViewController: UIViewController {
    
    static func with(TestId: String) -> TestViewController {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TestViewController") as! TestViewController
        return vc
    }
    
    
    
}



//static func with(noteId: String) -> NoteViewController {
//    let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NoteViewController") as! NoteViewController
//    vc.noteId = noteId
//    return vc
//}
//
//private var noteId: String!
//
//@IBOutlet weak var descriptionText: UILabel!
//
//override func viewDidLoad() {
//    super.viewDidLoad()
//    descriptionText.text = Note.getNoteBy(id: noteId)?.description
//}

