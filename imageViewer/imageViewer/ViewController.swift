//
//  ViewController.swift
//  imageViewer
//
//  Created by 한상진 on 2021/01/03.
//

import UIKit

class ViewController: UIViewController {
    var numberOfImage: Int = 1
    
    @IBOutlet weak var imgView: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgView.image = UIImage(named: "1.png")
    }
    
    @IBAction func beforeImage(_ sender: Any) {
        numberOfImage -= 1
        if (numberOfImage < 1) {
            numberOfImage = 6
        }
        let nextImage = String(numberOfImage) + ".png"
        imgView.image = UIImage(named: nextImage)
    }
    
    
    @IBAction func nextImage(_ sender: Any) {
        numberOfImage += 1
        if (numberOfImage > 6) {
            numberOfImage = 1
        }
        let nextImage = String(numberOfImage) + ".png"
        imgView.image = UIImage(named: nextImage)
    }
}

