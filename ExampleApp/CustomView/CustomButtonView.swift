



import UIKit


final class CustomButtonView: UIButton {
    
    //MARK: - Init
    
    init(label: String, color: UIColor, isShadow: Bool) {
        super.init(frame: .zero)
        setupButton(label, color, isShadow)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK: - Override Methods
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let shadowPath = UIBezierPath(rect: bounds)
        layer.shadowPath = shadowPath.cgPath
    }
}


extension CustomButtonView {
    
    //MARK: - Private Methods
    
    private func setupButton(_ label: String, _ color: UIColor, _ isShadow: Bool) {
        setTitle(label, for: .normal)
        setTitleColor(.white, for: .normal)
        backgroundColor = color
        frame = CGRect(x: 0, y: 0, width: 150, height: 50)
        layer.cornerRadius = Constant.cornerRadius
        
        heightAnchor.constraint(equalToConstant: 50).isActive = true
       
        if isShadow {
            layer.shadowColor = UIColor.black.cgColor
            layer.shadowOpacity = 0.2
            layer.shadowOffset = CGSize(width: 5, height: 5)
            layer.shadowRadius = 10
        }
    }
}


private extension CustomButtonView {
    enum Constant {
        static let cornerRadius: CGFloat = 16
    }
}
