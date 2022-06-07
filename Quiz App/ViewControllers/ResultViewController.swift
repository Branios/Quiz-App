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

    }
    
    private func showResult() {
        let selectedAnimal = Dictionary(grouping: answersInModel, by: { $0.animal })
        selectedAnimal.sorted(by: {$0 > $1})
        
            
        }
}
    



