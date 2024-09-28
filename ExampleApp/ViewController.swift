//
//  ViewController.swift
//  ExampleApp
//
//  Created by user on 27.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let helper = Helper()  // Экземпляр Helper
    let userRepo = UserRepository()  // Экземпляр UserRepository
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        // Получаем массив пользователей из репозитория
        let users = userRepo.getUsers()
        
        // Передаем полученных пользователей в Helper
        helper.addPeople(users)
        
        // Достаем пользователей из Helper для отображения
        helper.getPerson()
    }
}


