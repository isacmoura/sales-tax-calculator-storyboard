//
//  ViewController.swift
//  SalesTax
//
//  Created by Isac Moura Gomes on 06/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var beforeTaxPrice: Float = 0
    var salesTaxRate: Float = 0
    
    @IBOutlet weak var afterTaxPriceTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func parseInputsToFloat(text: String) -> Float {
        
        if let value = Float(text) {
            return value
        }
        
        return 0
    }

    @IBAction func beforeTaxPriceChanged(_ sender: UITextField) {
        
        beforeTaxPrice = parseInputsToFloat(text: sender.text!)
    }
    
    
    @IBAction func salesTaxRateChanged(_ sender: UITextField) {
        
        salesTaxRate = parseInputsToFloat(text: sender.text!)
    }
    
    
    @IBAction func calculateButtonPressed(_ sender: Any) {
        
        let salesTax = beforeTaxPrice * salesTaxRate / 100
        
        let afterTaxPrice = beforeTaxPrice + salesTax
        
        afterTaxPriceTextField.text = String(afterTaxPrice)
        
    }
    
}

