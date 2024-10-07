//
//  UIView.swift
//  ExampleApp
//
//  Created by user on 06.10.2024.
//

import UIKit

extension UIView {
    
    func addViews(_ view: UIView...) {
        view.forEach { addSubview($0)}
    }
    
}
