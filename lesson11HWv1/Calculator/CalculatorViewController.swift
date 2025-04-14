

import UIKit

class CalculateViewController: UIViewController {
    
    private var customView = CalculatorView()
    
    private var currentNumber = "0"
    private var firstOperand: Double?
    private var operation: String?
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    
    func setupUI() {
        let buttons = [
            customView.button0, customView.button1, customView.button2,
            customView.button3, customView.button4, customView.button5,
            customView.button6, customView.button7, customView.button8,
            customView.button9, customView.buttonPlus, customView.buttonMinus,
            customView.buttonMultiply, customView.buttonDivision,
            customView.buttonEqual, customView.buttonAC
        ]
        
       buttons.forEach { $0.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside) }
        
    }
    @objc private func buttonTapped(_ sender: UIButton) {
        guard let buttonText = sender.currentTitle else { return }
        
        switch buttonText {
        case "0"..."9":
            if currentNumber == "0" {
                currentNumber = buttonText
            } else {
                currentNumber += buttonText
            }
            customView.displayLabel.text = currentNumber
            
        case "AC":
            currentNumber = "0"
            firstOperand = nil
            operation = nil
            customView.displayLabel.text = currentNumber
            
        case "+", "-", "×", "÷":
            firstOperand = Double(currentNumber)
            operation = buttonText
            currentNumber = "0"
            
        case "=":
            if let operation = operation, let firstOperand = firstOperand {
                let secondOperand = Double(currentNumber) ?? 0
                var result: Double = 0
                
                switch operation {
                case "+": result = firstOperand + secondOperand
                case "-": result = firstOperand - secondOperand
                case "×": result = firstOperand * secondOperand
                case "÷": result = firstOperand / secondOperand
                default: break
                }
                
                currentNumber = String(result)
                customView.displayLabel.text = currentNumber
                self.operation = nil
            }
            
        default:
            break
        }
    }
}


