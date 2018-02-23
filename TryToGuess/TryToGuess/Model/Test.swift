////
////  Test.swift
////  TryToGuess
////
////  Created by Евгений Таран on 2/6/18.
////  Copyright © 2018 Zhenya Taran. All rights reserved.
////
//
//import Foundation
//import Quickblox
//
//class Test {
//
//    let classNameQB = "Tests"
//    let ids = ["5a72e119a28f9a0793f1fddd", "5a72e128a28f9a135bf1fd20"]
//    let testFieldName = "TestName"
//
//    var test = [String]()
//    var questions = [String]()
//
//    var saveTest(
//
//
//    func getTest(saveTest() -> ()) {
//        QBRequest.objects(withClassName: classNameQB, ids: ids, successBlock: { (response, objects) in
//            for object in objects! {
//                if let customObj = object as? QBCOCustomObject {
//                    if let fields = customObj.fields[self.testFieldName] as? String {
//                        var test: [String] = []
//                        test.append(fields)
//                    }
//                }
//            }
//        }) { (response) in
//
//        }
//    }
//
////    func count() -> Int{
////        return test.count
////    }
//
//
//    func getQuestions(testId: String) {
//        let customObject = QBCOCustomObject()
//        QBRequest.object(withClassName: classNameQB, id: testId, successBlock: { [weak self](response, customObject) in
//            guard let weakSelf = self else { return }
//            if let fields = customObject?.fields["Questions"] as? [String] {
//                weakSelf.questions.append(contentsOf: fields)
//            }
//        }) { (response) in
//
//        }
//    }
//}

