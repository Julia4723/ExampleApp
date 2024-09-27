//
//  ViewController.swift
//  ExampleApp
//
//  Created by user on 27.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let person = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("I am \(person.myName), my surname is \(person.mySurname). I am a developer.")
    }


}

