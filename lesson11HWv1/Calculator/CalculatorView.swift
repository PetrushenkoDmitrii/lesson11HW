import UIKit

class CalculatorView: UIView {
    
    private var containerHeaderView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        return view
    }()
    
    var displayLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .right
        label.textColor = .white
        label.font = .systemFont(ofSize: 55, weight: .bold)
        label.text = "0"
        return label
    }()
    
    private var buttonsContainerView1: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var buttonsStackView1: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 12
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    
    var buttonAC: UIButton = createCalculatorButton(title: "AC", backgroundColor: .lightGray)
    var buttonPlusMinus: UIButton = createCalculatorButton(title: "±", backgroundColor: .lightGray)
    var buttonPercent: UIButton = createCalculatorButton(title: "%", backgroundColor: .lightGray)
    var buttonDivision: UIButton = createCalculatorButton(title: "÷", backgroundColor: .systemOrange)
    
    private var buttonsContainerView2: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var buttonsStackView2: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 12
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    var button7: UIButton = createCalculatorButton(title: "7", backgroundColor: .darkGray)
    var button8: UIButton = createCalculatorButton(title: "8", backgroundColor: .darkGray)
    var button9: UIButton = createCalculatorButton(title: "9", backgroundColor: .darkGray)
    var buttonMultiply: UIButton = createCalculatorButton(title: "×", backgroundColor: .systemOrange)
    
    
    private var buttonsContainerView3: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var buttonsStackView3: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 12
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    var button4: UIButton = createCalculatorButton(title: "4", backgroundColor: .darkGray)
    var button5: UIButton = createCalculatorButton(title: "5", backgroundColor: .darkGray)
    var button6: UIButton = createCalculatorButton(title: "6", backgroundColor: .darkGray)
    var buttonMinus: UIButton = createCalculatorButton(title: "-", backgroundColor: .systemOrange)
    
    
    private var buttonsContainerView4: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var buttonsStackView4: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 12
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    var button1: UIButton = createCalculatorButton(title: "1", backgroundColor: .darkGray)
    var button2: UIButton = createCalculatorButton(title: "2", backgroundColor: .darkGray)
    var button3: UIButton = createCalculatorButton(title: "3", backgroundColor: .darkGray)
    var buttonPlus: UIButton = createCalculatorButton(title: "+", backgroundColor: .systemOrange)
    
    
    private var buttonsContainerView5: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var buttonsStackView5: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 12
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    var buttonCalculator: UIButton = createCalculatorButton(title: "🖩", backgroundColor: .darkGray)
    var button0: UIButton = createCalculatorButton(title: "0", backgroundColor: .darkGray)
    var buttonDot: UIButton = createCalculatorButton(title: ".", backgroundColor: .darkGray)
    var buttonEqual: UIButton = createCalculatorButton(title: "=", backgroundColor: .systemOrange)
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        addSubview(containerHeaderView)
        addSubview(buttonsContainerView1)
        addSubview(buttonsContainerView2)
        addSubview(buttonsContainerView3)
        addSubview(buttonsContainerView4)
        addSubview(buttonsContainerView5)
        
        containerHeaderView.addSubview(displayLabel)
        
        buttonsContainerView1.addSubview(buttonsStackView1)
        buttonsContainerView2.addSubview(buttonsStackView2)
        buttonsContainerView3.addSubview(buttonsStackView3)
        buttonsContainerView4.addSubview(buttonsStackView4)
        buttonsContainerView5.addSubview(buttonsStackView5)
        
        buttonsStackView1.addArrangedSubview(buttonAC)
        buttonsStackView1.addArrangedSubview(buttonPlusMinus)
        buttonsStackView1.addArrangedSubview(buttonPercent)
        buttonsStackView1.addArrangedSubview(buttonDivision)
        
        buttonsStackView2.addArrangedSubview(button7)
        buttonsStackView2.addArrangedSubview(button8)
        buttonsStackView2.addArrangedSubview(button9)
        buttonsStackView2.addArrangedSubview(buttonMultiply)
        
        buttonsStackView3.addArrangedSubview(button4)
        buttonsStackView3.addArrangedSubview(button5)
        buttonsStackView3.addArrangedSubview(button6)
        buttonsStackView3.addArrangedSubview(buttonMinus)
        
        buttonsStackView4.addArrangedSubview(button1)
        buttonsStackView4.addArrangedSubview(button2)
        buttonsStackView4.addArrangedSubview(button3)
        buttonsStackView4.addArrangedSubview(buttonPlus)
        
        buttonsStackView5.addArrangedSubview(buttonCalculator)
        buttonsStackView5.addArrangedSubview(button0)
        buttonsStackView5.addArrangedSubview(buttonDot)
        buttonsStackView5.addArrangedSubview(buttonEqual)
        
        let viewWidth = UIScreen.main.bounds.width
        let buttonSize = (UIScreen.main.bounds.width - (16 * 2 + 10 * 3)) / 4
        
        NSLayoutConstraint.activate([
            containerHeaderView.trailingAnchor.constraint(equalTo: trailingAnchor),
            containerHeaderView.topAnchor.constraint(equalTo: topAnchor),
            containerHeaderView.heightAnchor.constraint(equalToConstant: 300),
            containerHeaderView.widthAnchor.constraint(equalToConstant: viewWidth),
            
            displayLabel.bottomAnchor.constraint(equalTo: containerHeaderView.bottomAnchor),
            displayLabel.trailingAnchor.constraint(equalTo: containerHeaderView.trailingAnchor),
            
            buttonsContainerView1.topAnchor.constraint(equalTo: containerHeaderView.bottomAnchor),
            buttonsContainerView1.leadingAnchor.constraint(equalTo: leadingAnchor),
            buttonsContainerView1.trailingAnchor.constraint(equalTo: trailingAnchor),
            buttonsContainerView1.heightAnchor.constraint(equalToConstant: buttonSize),
            
            buttonsStackView1.topAnchor.constraint(equalTo: buttonsContainerView1.topAnchor, constant: 20),
            buttonsStackView1.leadingAnchor.constraint(equalTo: buttonsContainerView1.leadingAnchor, constant: 16),
            buttonsStackView1.trailingAnchor.constraint(equalTo: buttonsContainerView1.trailingAnchor, constant: -16),
            buttonsStackView1.heightAnchor.constraint(equalToConstant: buttonSize),
            
            buttonsContainerView2.topAnchor.constraint(equalTo: buttonsContainerView1.bottomAnchor, constant: 10),
            buttonsContainerView2.leadingAnchor.constraint(equalTo: leadingAnchor),
            buttonsContainerView2.trailingAnchor.constraint(equalTo: trailingAnchor),
            buttonsContainerView2.heightAnchor.constraint(equalTo: buttonsContainerView1.heightAnchor),
            
            buttonsStackView2.topAnchor.constraint(equalTo: buttonsContainerView2.topAnchor, constant: 20),
            buttonsStackView2.leadingAnchor.constraint(equalTo: buttonsContainerView2.leadingAnchor, constant: 16),
            buttonsStackView2.trailingAnchor.constraint(equalTo: buttonsContainerView2.trailingAnchor, constant: -16),
            buttonsStackView2.heightAnchor.constraint(equalToConstant: buttonSize),
            
            buttonsContainerView3.topAnchor.constraint(equalTo: buttonsContainerView2.bottomAnchor, constant: 10),
            buttonsContainerView3.leadingAnchor.constraint(equalTo: leadingAnchor),
            buttonsContainerView3.trailingAnchor.constraint(equalTo: trailingAnchor),
            buttonsContainerView3.heightAnchor.constraint(equalTo: buttonsContainerView1.heightAnchor),
            
            buttonsStackView3.topAnchor.constraint(equalTo: buttonsContainerView3.topAnchor, constant: 20),
            buttonsStackView3.leadingAnchor.constraint(equalTo: buttonsContainerView3.leadingAnchor, constant: 16),
            buttonsStackView3.trailingAnchor.constraint(equalTo: buttonsContainerView3.trailingAnchor, constant: -16),
            buttonsStackView3.heightAnchor.constraint(equalToConstant: buttonSize),
            
            buttonsContainerView4.topAnchor.constraint(equalTo: buttonsContainerView3.bottomAnchor, constant: 10),
            buttonsContainerView4.leadingAnchor.constraint(equalTo: leadingAnchor),
            buttonsContainerView4.trailingAnchor.constraint(equalTo: trailingAnchor),
            buttonsContainerView4.heightAnchor.constraint(equalTo: buttonsContainerView1.heightAnchor),
            
            buttonsStackView4.topAnchor.constraint(equalTo: buttonsContainerView4.topAnchor, constant: 20),
            buttonsStackView4.leadingAnchor.constraint(equalTo: buttonsContainerView4.leadingAnchor, constant: 16),
            buttonsStackView4.trailingAnchor.constraint(equalTo: buttonsContainerView4.trailingAnchor, constant: -16),
            buttonsStackView4.heightAnchor.constraint(equalToConstant: buttonSize),
            
            buttonsContainerView5.topAnchor.constraint(equalTo: buttonsContainerView4.bottomAnchor, constant: 10),
            buttonsContainerView5.leadingAnchor.constraint(equalTo: leadingAnchor),
            buttonsContainerView5.trailingAnchor.constraint(equalTo: trailingAnchor),
            buttonsContainerView5.heightAnchor.constraint(equalTo: buttonsContainerView1.heightAnchor),
            
            buttonsStackView5.topAnchor.constraint(equalTo: buttonsContainerView5.topAnchor, constant: 20),
            buttonsStackView5.leadingAnchor.constraint(equalTo: buttonsContainerView5.leadingAnchor, constant: 16),
            buttonsStackView5.trailingAnchor.constraint(equalTo: buttonsContainerView5.trailingAnchor, constant: -16),
            buttonsStackView5.heightAnchor.constraint(equalToConstant: buttonSize),
            
        ])
    }
    
    private static func createCalculatorButton(title: String, backgroundColor: UIColor) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(title, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 32)
        button.layer.cornerRadius = 40
        button.backgroundColor = backgroundColor
        return button
    }
}
