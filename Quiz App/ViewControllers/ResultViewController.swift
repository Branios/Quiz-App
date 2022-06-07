//
//  ResultViewController.swift
//  Quiz App
//
//  Created by VK on 03.06.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet var animalDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)

    }


}
