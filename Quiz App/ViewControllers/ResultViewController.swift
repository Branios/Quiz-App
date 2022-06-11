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
        showResult(with: <#Animal?#>)

    }
    
    private func filteringAnimal() {
        let selectedAnimal = Dictionary(grouping: answersInModel, by: { $0.animal })
        selectedAnimal.sorted({$0 > $1})
        selectedAnimal.first?.key
        }
    }

    private func showResult(with animal: Animal?) {
        resultAnimal.text = "Looks like you're a \(animal)!"
        animalDescription.text = animal?.definition ?? ""
    }



    



