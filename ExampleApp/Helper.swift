//
//  Helper.swift
//  ExampleApp
//
//  Created by user on 27.09.2024.
//
import UIKit

class Helper: UIViewController {
    
    private var users: [User] = []
    
    // Добавление одного пользователя
    func addPerson(_ person: User) {
        users.append(person)
    }
    
    // Добавление нескольких пользователей
    func addPeople(_ people: [User]) {
        users.append(contentsOf: people)
    }
    
    // Получение пользователей
    func getPerson() {
        for user in users {
            print(user.getFullName())
        }
    }
}
