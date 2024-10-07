//
//  Untitled.swift
//  ExampleApp
//
//  Created by user on 27.09.2024.
//
import UIKit

struct Person {
    let myName: String
    let mySurname: String
}


struct User {
    let username: String
    let password: String
    let personalInfo: Person
    
    func getFullName() -> String {
        ("\(personalInfo.myName) \(personalInfo.mySurname)")
    }
}
