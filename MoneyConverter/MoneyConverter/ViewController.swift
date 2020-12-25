//
//  ViewController.swift
//  MoneyConverter
//
//  Created by 한상진 on 2020/12/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currencySegment: UISegmentedControl!
    
    
    @IBOutlet weak var sourceMoneyField: UITextField!
    
    
    @IBOutlet weak var targetMoneyLabel: UILabel!
    
    
    @IBAction func convertMoney(_ sender: Any) {
        
        guard let sourceCurrency = Currency(rawValue: currencySegment.selectedSegmentIndex) else{
            print("Source Currency Error")
            return
        }
        guard let sourceAmount = Double(sourceMoneyField.text!) else{
            targetMoneyLabel.text = "Error"
            return
        }
        
        let sourceMoney = Money(sourceAmount, currency: sourceCurrency)
        
        var targetMoneyString = ""
        for i in stride(from: 0, to: 4, by: +1){
            targetMoneyString += sourceMoney.valueInCurrency(currency: Currency.init(rawValue: i)!)
            targetMoneyString += "\r\n"
        }
        targetMoneyLabel.text = targetMoneyString
        targetMoneyLabel.isHidden=false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

