//
//  ViewController.swift
//  NavigationViewController_tutorial
//
//  Created by Jeff Jeong on 2019/12/23.
//  Copyright © 2019 Tuentuenna. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    // 뷰가 생성되었을때
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 상단 네비게이션 바 부분을 숨김처리한다.
        self.navigationController?.isNavigationBarHidden = true
        
    }


}

