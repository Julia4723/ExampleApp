//
//  Helper.swift
//  ExampleApp
//
//  Created by user on 27.09.2024.
//
import UIKit

class Helper: UIViewController {
    
    private var users: [User] = []
    
    
    func addPerson(_ person: User) {
        users.append(person)
    }
    
    func getPerson() {
       for user in users {
           print(user.getFullName())
        }
    }
}
