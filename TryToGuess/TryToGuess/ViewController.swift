//
//  ViewController.swift
//  TryToGuess
//
//  Created by Евгений Таран on 1/16/18.
//  Copyright © 2018 Zhenya Taran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func firstButtonPressed(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let tabBarcontroller = storyBoard.instantiateViewController(withIdentifier: "TabBarController")
        self.present(tabBarcontroller, animated:true, completion:nil)
    }
    
}

