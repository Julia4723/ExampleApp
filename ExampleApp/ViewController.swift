//
//  ViewController.swift
//  ExampleApp
//
//  Created by user on 27.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    private let userRepo = UserRepository()
    private var labelUser = UILabel()
    
    private let customButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show full name", for: .normal)
        button.setTitleColor(.systemGray, for: .normal)
        button.backgroundColor = .systemGreen
        button.frame = CGRect(x: 100, y: 150, width: 150, height: 50)
        
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        let users = userRepo.getUsers()
        
        helper.addPeople(users)
        
        helper.getPerson()
        
        setupLabel()
        view.addSubview(labelUser)
        view.addSubview(customButton)
        
    }
    
    func setupLabel() {
        if let randomUser = helper.getRandomUser() {
            labelUser.text = "\(randomUser.getFullName())"
        } else {
            labelUser.text = "No"
        }
        labelUser.font = .systemFont(ofSize: 25, weight: .bold)
        labelUser.textColor = .systemBlue
        labelUser.frame = CGRect(x: 30, y: 30, width: 200, height: 100)
    }
}



