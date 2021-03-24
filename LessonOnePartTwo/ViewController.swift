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


    var currentColor = ""
    
    @IBAction func startButtonClick() {
        startButton.setTitle("NEXT", for: .normal)
        
        if currentColor == "" {
            redColorView.alpha = 1
            currentColor = "Red"
        } else if currentColor == "Red" {
            redColorView.alpha = 0.3
            yellowColorView.alpha = 1
            currentColor = "Yellow"
        } else if currentColor == "Yellow" {
            yellowColorView.alpha = 0.3
            currentColor = "Green"
            greenColorView.alpha = 1
        } else if currentColor == "Green" {
            greenColorView.alpha = 0.3
            currentColor = ""
        }
    }
}

