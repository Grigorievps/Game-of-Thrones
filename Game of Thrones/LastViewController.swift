//
//  LastViewController.swift
//  Game of Thrones
//
//  Created by Павел Григорьев on 30/05/2019.
//  Copyright © 2019 GP. All rights reserved.
//

import UIKit

class LastViewController: UIViewController {

    @IBOutlet weak var resultTextView: UITextView!
    @IBOutlet weak var resultLable: UILabel!
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        boudsCheck()
    }
    
    func boudsCheck() {
        if view.bounds.width > 320 {
            bottomConstraint.constant = 30
            resultLable.font = UIFont(name: resultLable.font.fontName, size: 30)
            resultTextView.font = UIFont(name: resultTextView.font!.fontName, size: 16)
        }
    }
}
