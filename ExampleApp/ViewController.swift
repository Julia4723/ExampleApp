//
//  ViewController.swift
//  ExampleApp
//
//  Created by user on 27.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let helper = Helper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let person1 = Person(myName: "Ann", mySurname: "Ivanova")
        let person2 = Person(myName: "Andrey", mySurname: "Ivanov")
        
        let user1 = User(username: "ann_a", password: "1234", personalInfo: person1)
        let user2 = User(username: "andry_a", password: "1234", personalInfo: person2)
        
        helper.addPerson(user1)
        helper.addPerson(user2)
        
        helper.getPerson()
    }
}



