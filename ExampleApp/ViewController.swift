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
    
    private let customButton = UIButton()
    
    private let myButtonFirst = CustomButtonView(label: "First", color: .systemRed)
    private let myButtonSecond = CustomButtonView(label: "Second Button", color: .systemBlue)
    
    private let stackView = UIStackView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        let users = userRepo.getUsers()
        
        helper.addPeople(users)
        
        helper.getPerson()
        
        setupLabel()
        setupButton()
        setupStackView()
        
        view.addSubview(stackView)

        setupLayout()
//        view.addSubview(labelUser)
//        view.addSubview(customButton)
        
    }
    
    private func setupButton() {
        customButton.setTitle("Show full name", for: .normal)
        customButton.setTitleColor(.systemGray, for: .normal)
        customButton.backgroundColor = .systemGreen
        customButton.frame = CGRect(x: 100, y: 150, width: 150, height: 50)
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
    
    func setupStackView(){
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 40
        
        stackView.addArrangedSubview(labelUser)
        stackView.addArrangedSubview(myButtonFirst)
        stackView.addArrangedSubview(myButtonSecond)
    }
    
    func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
           
        ])
    }
}





