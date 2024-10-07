



import UIKit


final class CustomButtonView: UIButton {
    
    
    //MARK: - Private Property
    
    private let button = UIButton()
    
    //MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupLayout()
    }
    
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
    
    
    //MARK: - Private Methods
    
    private func setupButton(_ label: String, _ color: UIColor, _ isShadow: Bool) {
        button.setTitle(label, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = color
        button.frame = CGRect(x: 0, y: 0, width: 150, height: 50)
        button.layer.cornerRadius = 16
       
        if isShadow {
            button.layer.shadowColor = UIColor.black.cgColor
            button.layer.shadowOpacity = 0.2
            button.layer.shadowOffset = CGSize(width: 5, height: 5)
            button.layer.shadowRadius = 10
        }
        
        addViews(button)
        //addSubview(button)
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

