//
//  ViewController.swift
//  LessonOnePartTwo
//
//  Created by 18316409 on 23.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redColorView: UIView!
    @IBOutlet weak var yellowColorView: UIView!
    @IBOutlet weak var greenColorView: UIView!
  
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
       
        redColorView.alpha = 0.3
        redColorView.layer.cornerRadius = redColorView.frame.size.width / 2
        redColorView.clipsToBounds = true
        
        yellowColorView.alpha = 0.3
        yellowColorView.layer.cornerRadius = redColorView.frame.size.width / 2
        yellowColorView.clipsToBounds = true
        
        
        greenColorView.alpha = 0.3
        greenColorView.layer.cornerRadius = redColorView.frame.size.width / 2
        greenColorView.clipsToBounds = true
    }


    @IBAction func startButtonClick() {
        startButton.setTitle("NEXT", for: .normal)
        
        var redOnSwitch = false
        var yellowOnSwitch = false
//        var greenOnSwitch = false
        
        if redColorView.alpha != 1 {
            redColorView.alpha = 1
            redOnSwitch = true
            print (redOnSwitch)
        } else {
            redColorView.alpha = 0.3
            redOnSwitch = false
            print (redOnSwitch)
        }
        
        if yellowColorView.alpha != 1 && redOnSwitch == false {
            yellowColorView.alpha = 1
            yellowOnSwitch = true
            print (yellowOnSwitch)
        } else {
            yellowColorView.alpha = 0.3
            yellowOnSwitch = false
            print (yellowOnSwitch)
        }
        
//        if greenColorView.alpha != 1 && yellowOnSwitch == false && greenOnSwitch == false {
//            greenColorView.alpha = 1
//            greenOnSwitch = true
//            print (greenOnSwitch)
//        } else {
//            greenColorView.alpha = 0.3
//            greenOnSwitch = false
//            print (greenOnSwitch)
//        }
 
        
        
        
        
    }
    
    
}

