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
    @IBOutlet weak var questionStackView: UIStackView!
    
    var questionIndex = 0
    var question = Question.loadQuestion()
        
    // MARK: - Stored Properties
    var answerChosen = [Answer]()
        
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let currentAnswer = question[questionIndex].answer
        guard let buttonIndex = answerButtons.firstIndex(of: sender) else { return }
        let answer = currentAnswer[buttonIndex]
        answerChosen.append(answer)
        nextQuestion()
        }
    }
    
    // MARK: - ViewController Methods
    extension QuestionViewController {
        override func viewDidLoad() {
            super .viewDidLoad()
            updateUI()
            boudsCheck()
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
            let totalProgress = Float(questionIndex + 1) / Float(question.count)
            progressView.setProgress(totalProgress, animated: true)
            //set navigation Title
            navigationItem.title = "Вопрос №\(questionIndex + 1) из \(question.count)"
            questionLable.text = currentQuestion.text
            updateStack(using: currentAnswer)
        }
        
        func updateStack (using answers: [Answer]) {
            
            for (button, answer) in zip(answerButtons, answers) {
                button.setTitle(answer.text, for: [])
                button.titleLabel?.textAlignment = .center
                button.titleLabel?.numberOfLines = 0
            }
        }
        
        func boudsCheck() {
            if view.bounds.width > 320 {
                questionStackView.spacing = 50
                questionLable.font = UIFont(name: questionLable.font.fontName, size: 30)
                for answerButton in answerButtons {
                    answerButton.titleLabel?.font = UIFont(name: answerButton.titleLabel!.font.fontName, size: 26)
                }
            }
        }
        
        func nextQuestion () {
            questionIndex += 1
            
            if questionIndex < question.count {
                updateUI()
            } else {
                performSegue(withIdentifier: "resultSegue", sender: nil)
            }
        }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard segue.identifier == "resultSegue" else { return }
            let destination = segue.destination as! ResultViewController
            destination.responses = answerChosen
        }
    }

