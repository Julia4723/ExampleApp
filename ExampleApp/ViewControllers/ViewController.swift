//
//  ViewController.swift
//  ExampleApp
//
//  Created by user on 27.09.2024.
//


import UIKit

class ViewController: UIViewController {
    
    //MARK: - Private Property
    
    private let helper = Helper()
    private let userRepo = UserRepository()
    private var labelUser = UILabel()
    
    private var isHidden = false
    
    private let customButton = UIButton()
    
    private let myButtonFirst = CustomButtonView(label: "First", color: .systemRed, isShadow: false)
    private let myButtonSecond = CustomButtonView(label: "Second Button", color: .systemBlue, isShadow: true)
    
    private let stackView = UIStackView()
    
    //MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        let users = userRepo.getUsers()
        
        helper.addPeople(users)
        
        helper.getPerson()
        
        setupLabel()
        setupButton()
        setupStackView()
        
        view.addViews(stackView)
        //view.addSubview(stackView)
        
        addAction()
        
        setupLayout()
        //        view.addSubview(labelUser)
        //        view.addSubview(customButton)
        
    }
    
    //MARK: - Methods
    @objc private func firstButtonTapped() {
        if let randomUser = helper.getRandomUser() {
            labelUser.text = "\(randomUser.getFullName())"
        } else {
            labelUser.text = "No users"
        }
    }
    
    
    //MARK: - Layout
    
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
}


private extension ViewController {
    
    //MARK: - Add Actions
    
    func addAction() {
        myButtonFirst.addTarget(
            self,
            action: #selector(firstButtonTapped),
            for: .touchUpInside
        )
        
        let action = UIAction { _ in
            self.isHidden.toggle()
            
            if self.isHidden {
                self.labelUser.text = ""
            } else if let randomUser = self.helper.getRandomUser() {
                self.labelUser.text = "\(randomUser.getFullName())"
            } else {
                self.labelUser.text = "No users"
            }
        }
        
        myButtonSecond.addAction(action, for: .touchUpInside)
    }
    
    
    
    //MARK: - Setup Layout
    
    private func setupButton() {
        customButton.setTitle("Show full name", for: .normal)
        customButton.setTitleColor(.systemGray, for: .normal)
        customButton.backgroundColor = .systemGreen
        customButton.frame = CGRect(x: 100, y: 150, width: 150, height: 50)
    }
    
    private func setupLabel() {
        if let randomUser = helper.getRandomUser() {
            labelUser.text = "\(randomUser.getFullName())"
        } else {
            labelUser.text = "No"
        }
        labelUser.font = .systemFont(ofSize: 25, weight: .bold)
        labelUser.textAlignment = .center
        labelUser.textColor = .systemBlue
        labelUser.frame = CGRect(x: 30, y: 30, width: 200, height: 100)
    }
    
    private func setupStackView(){
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.alignment = .fill
        stackView.spacing = 40
        
        stackView.addSubViews(labelUser, myButtonFirst, myButtonSecond)
        
        //        stackView.addArrangedSubview(labelUser)
        //        stackView.addArrangedSubview(myButtonFirst)
        //        stackView.addArrangedSubview(myButtonSecond)
    }
    
}




