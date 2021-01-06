//
//  ViewController.swift
//  Alert
//
//  Created by 한상진 on 2021/01/06.
//

import UIKit

class ViewController: UIViewController {
    let imgOn = UIImage(named: "lamp-on.png")
    let imgOff = UIImage(named: "lamp-off.png")
    let imgRemove = UIImage(named: "lamp-remove.png")
    var isLampOn = true
    @IBOutlet weak var lampImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lampImg.image = imgOn
    }

    @IBAction func btnLampOn(_ sender: UIButton) {
        
        if (isLampOn == true) {
            let lampOnAlert = UIAlertController(title: "경고", message: "이미 켜진 상태입니다.", preferredStyle: UIAlertController.Style.alert)
            let onAction = UIAlertAction(title: "네, 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
            lampOnAlert.addAction(onAction)
            present(lampOnAlert, animated: true, completion: nil)
        } else {
            isLampOn = true
            lampImg.image = imgOn
        }
    }
    
    @IBAction func btnLampOff(_ sender: UIButton) {
        
        if isLampOn {
            let lampOffAlert = UIAlertController(title: "램프 끄기", message: "램프를 끄시겠습니까?", preferredStyle: UIAlertController.Style.alert)
            
            let offAction = UIAlertAction(title: "네", style: UIAlertAction.Style.default, handler: {
                ACTION in
                self.lampImg.image = self.imgOff
                self.isLampOn = false
            })
            
            let cancelAction = UIAlertAction(title: "아니요", style: UIAlertAction.Style.default, handler: nil)
            lampOffAlert.addAction(offAction)
            lampOffAlert.addAction(cancelAction)
            present(lampOffAlert, animated: true, completion: nil)
        } else {
            let lampAlreadyOff = UIAlertController(title: "경고", message: "이미 꺼졌거나 제거된 상태입니다.", preferredStyle: UIAlertController.Style.alert)
            let alreadyOff = UIAlertAction(title: "네, 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
            lampAlreadyOff.addAction(alreadyOff)
            present(lampAlreadyOff, animated: true, completion: nil)
        }
    }
    
    @IBAction func btnLampRemove(_ sender: UIButton) {
        if lampImg.image == imgRemove {
            let alreadyRemoved = UIAlertController(title: "경고", message: "이미 제거된 상태입니다.", preferredStyle: UIAlertController.Style.alert)
            let alreadyRemovedAction = UIAlertAction(title: "네, 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
            alreadyRemoved.addAction(alreadyRemovedAction)
            present(alreadyRemoved, animated: true, completion: nil)
        } else {
            let lampRemoveAlert = UIAlertController(title: "램프 제거", message: "램프를 제거하시겠습니까?", preferredStyle: UIAlertController.Style.alert)
            let onAction = UIAlertAction(title: "아니요, 킵니다(on).", style: UIAlertAction.Style.default, handler: {
                ACTION in
                self.lampImg.image = self.imgOn
                self.isLampOn = true
            })
            let offAction = UIAlertAction(title: "아니요, 끕니다(off).", style: UIAlertAction.Style.default, handler: {
                ACTION in
                self.lampImg.image = self.imgOff
                self.isLampOn = false
            })
            let removeAction = UIAlertAction(title: "네, 제거합니다", style: UIAlertAction.Style.destructive, handler: {
                ACTION in
                self.lampImg.image = self.imgRemove
                self.isLampOn = false
            })
            lampRemoveAlert.addAction(onAction)
            lampRemoveAlert.addAction(offAction)
            lampRemoveAlert.addAction(removeAction)
            present(lampRemoveAlert, animated: true, completion: nil)
        }
    }
}

