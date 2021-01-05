//
//  ViewController.swift
//  datePickerAlarmClock
//
//  Created by 한상진 on 2021/01/05.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var currentTime: UILabel!
    @IBOutlet weak var selectedTime: UILabel!
    let timeSelector: Selector = #selector(ViewController.updateTime)
    var alarmTime: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }
    
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePcikerView = sender
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "Ko_kr")
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        selectedTime.text = "선택시간 : " + formatter.string(from: datePcikerView.date)
        alarmTime = formatter.string(from: datePcikerView.date)
    }
    
    @objc func updateTime() {
        let date = NSDate()
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "Ko_kr")
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        currentTime.text = "현재시간 : " + formatter.string(from: date as Date)
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        let nowTime = formatter.string(from: date as Date)
        if (alarmTime == nowTime) {
            view.backgroundColor = UIColor.red
        } else {
            view.backgroundColor = UIColor.white
        }
        
    }


}

