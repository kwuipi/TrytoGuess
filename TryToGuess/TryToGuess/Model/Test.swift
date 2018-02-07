//
//  Test.swift
//  TryToGuess
//
//  Created by Евгений Таран on 2/6/18.
//  Copyright © 2018 Zhenya Taran. All rights reserved.
//

import Foundation
import Quickblox

struct Test {
    
    let test: String
    
    static var getTest: [Test] = {
        var testName = [Test]()
        let classNameQB = "Tests"
        let id1 = ["5a72e119a28f9a0793f1fddd", "5a72e128a28f9a135bf1fd20"]
        QBRequest.objects(withClassName: classNameQB, ids: id1, successBlock: { (response, objects) in
            DispatchQueue.main.async {
                for object in objects! {
                    if let customObj = object as? QBCOCustomObject {
                        if let fields = customObj.fields["TestName"] as? String  {
                            testName.append(Test(test: "\(fields)"))
                        }
                    }
                }
            }
            
        }){ (response) in
            
        }
        return testName
    }()

}
//let title: String
//let description: String
//let id: String
//
//static var testNotes: [Note] = {
//    var notes = [Note]()
//    for note in 0...20 {
//        notes.append(Note(title: "Test #\(note+1)", description: "Test #\(note+1)" + " vlad pidor", id: String(note)))
//    }
//    return notes
//}()
//
//static func  getNoteBy(id: String) -> Note? {
//    return self.testNotes.filter { $0.id == id }.first
//}

//QBRequest.objects(withClassName: classNameQB, ids: id1, successBlock: { (response, objects) in
//    DispatchQueue.main.async {
//        for object in objects! {
//            if let customObj = object as? QBCOCustomObject {
//                if let fields = customObj.fields["TestName"] as? String  {
//                    self.field.append(fields)
//                    self.table?.reloadData()
//                }
//            }
//        }
//    }
//}) { (response) in
//
//}
//
//}

