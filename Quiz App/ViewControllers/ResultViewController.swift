//
//  ResultViewController.swift
//  Quiz App
//
//  Created by VK on 03.06.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet var resultAnimal: UILabel!
    @IBOutlet var animalDescription: UILabel!
    
    var answersInModel: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
        filteringAnimal()
    }
    
    private func filteringAnimal() {
        let selectedAnimal = Dictionary(grouping: answersInModel) { $0.animal }
            .max{$0.value.count > $1.value.count}?.key
        
        showResult(with: selectedAnimal)
    }

    private func showResult(with animal: Animal?) {
        resultAnimal.text = "Looks like you're a \(animal?.rawValue ?? "🐶")!"
        animalDescription.text = animal?.definition ?? ""
    }
}



    



