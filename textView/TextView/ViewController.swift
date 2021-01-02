//
//  ViewController.swift
//  TextView
//
//  Created by 한상진 on 2021/01/02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendButton(_ sender: Any) {
        helloLabel.text = "Hello, " + nameText.text!
    }
}

