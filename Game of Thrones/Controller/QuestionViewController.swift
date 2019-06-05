//
//  QuestionViewController.swift
//  Game of Thrones
//
//  Created by Павел Григорьев on 05/06/2019.
//  Copyright © 2019 GP. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
        
        // MARK: - IB Outlets
        @IBOutlet weak var questionLable: UILabel!
        @IBOutlet weak var progressView: UIProgressView!
        @IBOutlet var answerButtons: [UIButton]!
        
        var questionIndex = 0
        var question = Question.loadQuestion()
        
        // MARK: - Stored Properties
        var answerChosen = [Answer]()
        
        @IBAction func answerButtonPressed(_ sender: UIButton) {
                let currentAnswer = question[questionIndex].answer
                guard let buttonIndex = answerButtons.firstIndex(of: sender) else { return }
                let answer = currentAnswer[buttonIndex]
                answerChosen.append(answer)
        }
    }
    
    // MARK: - ViewController Methods
    extension QuestionViewController {
        override func viewDidLoad() {
            super .viewDidLoad()
            updateUI()
        }
    }
    // MARK: - User Intarface
    extension QuestionViewController {
        func updateUI () {
            //get current question
            let currentQuestion = question[questionIndex]
            //get current answer
            let currentAnswer = currentQuestion.answer
            //calculate progress
            let totalProgress = Float(questionIndex) / Float(question.count)
            progressView.setProgress(totalProgress, animated: true)
            //set navigation Title
            navigationItem.title = "Вопрос №\(questionIndex + 1) из \(question.count)"
            questionLable.text = currentQuestion.text
            updateStack(using: currentAnswer)
        }
        
        func updateStack (using answers: [Answer]) {
            
            for (button, answer) in zip(answerButtons, answers) {
                button.setTitle(answer.text, for: [])
            }
        }
        
        func nextQuestion () {
            
        }
    }

