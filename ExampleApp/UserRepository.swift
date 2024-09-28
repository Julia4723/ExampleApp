//
//  userRepos.swift
//  ExampleApp
//
//  Created by user on 28.09.2024.
//

import UIKit

class UserRepository {
    
    // Метод для получения массива пользователей, имитирует запрос в сеть
    func getUsers() -> [User] {
        var arrayUsers: [User] = []
        
        let person1 = Person(myName: "Ann", mySurname: "Ivanova")
        let person2 = Person(myName: "Andrey", mySurname: "Ivanov")
        
        let user1 = User(username: "ann_a", password: "1234", personalInfo: person1)
        let user2 = User(username: "andry_a", password: "1234", personalInfo: person2)
        
        arrayUsers.append(user1)
        arrayUsers.append(user2)
        
        return arrayUsers
    }
}
