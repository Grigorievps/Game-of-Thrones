//
//  LastViewController.swift
//  Game of Thrones
//
//  Created by Павел Григорьев on 30/05/2019.
//  Copyright © 2019 GP. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultTextView: UITextView!
    @IBOutlet weak var resultLable: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var stackViewHeight: NSLayoutConstraint!
    
    var responses: [Answer]!
    
    override func viewDidLoad() {
        super .viewDidLoad()
        navigationItem.hidesBackButton = true
        updateResult()
        boudsCheck()
    }
}


// MARK: - Update UI
extension ResultViewController {
    
    func boudsCheck() {
        if view.bounds.width > 320 {
            bottomConstraint.constant = 30
            resultLable.font = UIFont(name: resultLable.font.fontName, size: 30)
            resultTextView.font = UIFont(name: resultTextView.font!.fontName, size: 18)
            stackViewHeight.constant = 250
        }
    }
    
    func updateResult() {
        var frequencyOfAnswers = [CharacterType: Int]()
        let responseType = responses.map{ $0.type }
        
        for response in responseType {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        let frequencyOfAnswersSorted = frequencyOfAnswers.sorted { $0.value > $1.value}
        guard let mostFrequencyAnswer = frequencyOfAnswersSorted.first?.key else {return}
        updateUI(with: mostFrequencyAnswer)
    }
    
    func updateUI(with character: CharacterType) {
        resultTextView.text = character.definition
        resultTextView.scrollsToTop = true
        //resultTextView.setContentOffset(.zero, animated: true)
        resultLable.text = character.name
        resultImage.image = UIImage(named: character.image)
    }
}
