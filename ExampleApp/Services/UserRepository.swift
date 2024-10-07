//
//  userRepos.swift
//  ExampleApp
//
//  Created by user on 28.09.2024.
//

import UIKit

final class UserRepository {
    
    func getUsers() -> [User] {
        var arrayUsers: [User] = []
        
        let person1 = Person(myName: "Ann", mySurname: "Ivanova")
        let person2 = Person(myName: "Andrey", mySurname: "Ivanov")
        let person3 = Person(myName: "Bob", mySurname: "Green")
        let person4 = Person(myName: "Sandra", mySurname: "White")
        
        let user1 = User(username: "ann_a", password: "1234", personalInfo: person1)
        let user2 = User(username: "andry_a", password: "1234", personalInfo: person2)
        let user3 = User(username: "sammy_a", password: "1234", personalInfo: person3)
        let user4 = User(username: "sunny_a", password: "1234", personalInfo: person4)
        
        arrayUsers.append(user1)
        arrayUsers.append(user2)
        arrayUsers.append(user3)
        arrayUsers.append(user4)
        
        return arrayUsers
    }
}
