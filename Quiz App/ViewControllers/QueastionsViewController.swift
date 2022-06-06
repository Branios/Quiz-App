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
    
    @IBOutlet var rangedAnswerTexts: [UILabel]!
    @IBOutlet var rangedSlider: UISlider!
    
    private let queastions = Question.getQuestions()
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func multipleAnswerButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func rangedAnswerButtonPressed(_ sender: UIButton) {
    }
    
    
}
