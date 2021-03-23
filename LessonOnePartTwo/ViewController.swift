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
       
        redColorView.layer.cornerRadius = 40
        redColorView.alpha = 0.3
        yellowColorView.layer.cornerRadius = 40
        yellowColorView.alpha = 0.3
        greenColorView.layer.cornerRadius = 40
        greenColorView.alpha = 0.3
    }


    @IBAction func startButtonClick() {
        startButton.setTitle("NEXT", for: .normal)
        
        if redColorView.alpha != 1 {
            redColorView.alpha = 1
        } else if redColorView.alpha == 1 {
            redColorView.alpha = 0.3
        }
        
        
    }
    

}

