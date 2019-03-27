//
//  ViewController.swift
//  ImageView Ainmation Timer 01
//
//  Created by D7703_07 on 2019. 3. 27..
//  Copyright © 2019년 1234. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var alienTmageViewer: UIImageView!
    
    @IBOutlet weak var countLabel: UILabel!
    var count = 1
    var isAnimation = false
    var myTimer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        alienTmageViewer.image = UIImage(named: "Image1")
       // countLabel.text = String(count)
    }

    @IBAction func playBtnPressed(_ sender: Any) {
        print("play pressed")
       //Timer 호출
        myTimer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
        
    }
    
    
    @IBAction func pauseBtnPressed(_ sender: Any) {
        print("pause pressed")
        myTimer.invalidate()
    }
    
    @IBAction func stopBtnPressed(_ sender: Any) {
        print("stop pressed")
        
        myTimer.invalidate()
        count = 0
        countLabel.text = String(count)
    }
    
    @objc func doAnimation() {
        
        //count+=1
        if count == 5{
            count = 1
        }else {
            count+=1
        }
        
        alienTmageViewer.image = UIImage(named: "Image\(count)")
        countLabel.text = String(count)
    }
}


