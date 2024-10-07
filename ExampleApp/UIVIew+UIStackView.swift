//
//  UIStackView.swift
//  ExampleApp
//
//  Created by user on 06.10.2024.
//

import UIKit


extension UIStackView {
    
    func addSubViews(_ view: UIView...) {
        
        view.forEach { addArrangedSubview($0)}
    }
}
