//
//  ViewController.swift
//  alertMission
//
//  Created by 한상진 on 2021/01/06.
//

import UIKit

class ViewController: UIViewController {
    let selector: Selector = #selector(updateTime)
    var alarmTime: String?
    var alarmFlag: Bool?
    @IBOutlet weak var lblcurrentTime: UILabel!
    @IBOutlet weak var lblselectedTime: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: selector, userInfo: nil, repeats: true)
    }

    @IBAction func datePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        formatter.dateFormat = "MM-dd HH:mm"
        formatter.locale = Locale(identifier: "ko_kr")
        lblselectedTime.text = formatter.string(from: datePickerView.date)
        alarmTime = formatter.string(from: datePickerView.date)
        alarmFlag = true
    }
    
    @objc func updateTime() {
        let date = NSDate()
        let formatter = DateFormatter()
        formatter.dateFormat = "MM-dd HH:mm:ss"
        formatter.locale = Locale(identifier: "ko_kr")
        lblcurrentTime.text = formatter.string(from: date as Date)
        formatter.dateFormat = "MM-dd HH:mm"
        let nowTime = formatter.string(from: date as Date)
        
        if (nowTime == alarmTime && alarmFlag == true) {
            alarmFlag = false
            let alarm = UIAlertController(title: "알림", message: "설정된 시간입니다 !!!", preferredStyle: UIAlertController.Style.alert)
            let alarmAction = UIAlertAction(title: "네, 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
            alarm.addAction(alarmAction)
            present(alarm, animated: true, completion: nil)
        }
    }
}

