//
//  ViewController.swift
//  pageControlMission
//
//  Created by 한상진 on 2021/01/07.
//

import UIKit

var labelText: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

class ViewController: UIViewController {
    @IBOutlet weak var lblLabel: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControl.numberOfPages = labelText.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.green
        pageControl.currentPageIndicatorTintColor = UIColor.red
    }
    @IBAction func pageChange(_ sender: UIPageControl) {
        
        lblLabel.text = String(labelText[pageControl.currentPage])
    }
}

