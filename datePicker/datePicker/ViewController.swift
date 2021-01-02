//
//  ViewController.swift
//  datePicker
//
//  Created by 한상진 on 2021/01/03.
//

import UIKit

class ViewController: UIViewController {
    let timeSelector: Selector = #selector(ViewController.updateTime)

    @IBOutlet weak var currentTime: UILabel!
    @IBOutlet weak var selectedTime: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        formatter.locale = Locale(identifier: "ko_KR")
        selectedTime.text = "선택시간 : " + formatter.string(from: datePickerView.date)
    }
    
    @objc func updateTime() {
        let date = NSDate()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        formatter.locale = Locale(identifier: "ko_KR")
        currentTime.text = "현재시간 : " + formatter.string(from: date as Date)
    }
    
}

