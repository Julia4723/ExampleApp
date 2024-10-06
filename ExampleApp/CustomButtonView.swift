



import UIKit


final class CustomButtonView: UIButton {
    
    private let button = UIButton()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupLayout()
    }
    
    init(label: String, color: UIColor) {
        super.init(frame: .zero)
        setupButton(label, color)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupButton(_ label: String, _ color: UIColor) {
        button.setTitle(label, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = color
        button.frame = CGRect(x: 0, y: 0, width: 150, height: 50)
        
        addSubview(button)
    }
    
    private func setupLayout() {
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: topAnchor),
            button.leadingAnchor.constraint(equalTo: leadingAnchor),
            button.trailingAnchor.constraint(equalTo: trailingAnchor),
            button.bottomAnchor.constraint(equalTo: bottomAnchor),
            
        ])
    }
    
}

