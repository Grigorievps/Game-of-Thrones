//
//  ViewController.swift
//  Game of Thrones
//
//  Created by Павел Григорьев on 29/05/2019.
//  Copyright © 2019 GP. All rights reserved.
//

import UIKit

class IntroductionViewController: UIViewController {

    @IBOutlet weak var BottomConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var lable: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        
    }
    override func viewDidLoad() {
        boudsCheck()
    }
    
    func boudsCheck() {
        if view.bounds.width > 320 {
            BottomConstraint.constant = 30
            lable.font = UIFont(name: lable.font.fontName, size: 25)
            startButton.titleLabel?.font = UIFont(name: startButton.titleLabel!.font.fontName, size: 30)
        }
    }

    
}

