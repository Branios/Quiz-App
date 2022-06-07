//
//  QueastionsViewController.swift
//  Quiz App
//
//  Created by VK on 03.06.2022.
//

import UIKit

class QueastionsViewController: UIViewController {
    
    @IBOutlet var queastionText: UILabel!
    @IBOutlet var questionProgress: UIProgressView!
    
    @IBOutlet var singleStackView: UIStackView!
    @IBOutlet var singleAnswerButtons: [UIButton]!
    
    @IBOutlet var multipleStackView: UIStackView!
    @IBOutlet var multipleAnswerTexts: [UILabel]!
    @IBOutlet var multipleSwitches: [UISwitch]!
    
    @IBOutlet var rangedStackView: UIStackView!
    @IBOutlet var rangedAnswerTexts: [UILabel]!
    @IBOutlet var rangedSlider: UISlider!
    
    private let queastions = Question.getQuestions()
    private var questionIndex = 0
    private var currentAnswers: [Answer] {
        queastions[questionIndex].answer
    }
    private var answersChosen: [Answer] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
        guard let buttonIndex = singleAnswerButtons.firstIndex(of: sender) else {return}
        let currentAnswer = currentAnswers[buttonIndex]
        answersChosen.append(currentAnswer)
        nextQuestion()
    }
    
    
    @IBAction func multipleAnswerButtonPressed() {
    }
    
    @IBAction func rangedAnswerButtonPressed() {
    }
}

extension QueastionsViewController {
    private func updateUI() {
        // Hide stacks
        for stackView in [singleStackView, multipleStackView, rangedStackView] {
            stackView?.isHidden = true
        }
        
        //Get current question
        let currentQuestion = queastions[questionIndex]
        
        //Set current question for question text
        queastionText.text = currentQuestion.title
        
        //Calculate progress
        let totalProgress = Float(questionIndex) / Float(queastions.count)
        
        //Set progress for question progress view
        questionProgress.setProgress(totalProgress, animated: true)
        
        //Set navigation title
        title = "Question № \(questionIndex + 1) from \(queastions.count)"

        showCurrentAnswers(for: currentQuestion.type)
    }
    
    private func showCurrentAnswers(for type: ResponseType) {
        switch type {
        case .single: showSingleStackView(with: currentAnswers)
        case .multiple: break
        case .ranged: break
        }
    }
    
    private func showSingleStackView(with answers: [Answer]) {
        singleStackView.isHidden.toggle()
        
        for (button, answer) in zip(singleAnswerButtons, answers) {
            button.setTitle(answer.title, for: .normal)
        }
        
    }
    
    private func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < queastions.count {
            updateUI()
            return
        }
        
        performSegue(withIdentifier: "results", sender: nil)
    }
}
