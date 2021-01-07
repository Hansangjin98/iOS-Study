//
//  ViewController.swift
//  pageControl
//
//  Created by 한상진 on 2021/01/07.
//

import UIKit

var imges = [ "01.png", "02.png", "03.png", "04.png", "05.png", "06.png" ]

class ViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControl.numberOfPages = imges.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.green
        pageControl.currentPageIndicatorTintColor = UIColor.red
        imgView.image = UIImage(named: imges[0])
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        imgView.image = UIImage(named: imges[pageControl.currentPage])
    }
    
}

