//
//  ResultViewController.swift
//  BMI-Calculator-App
//
//  Created by Baki Dikbıyık on 22.03.2022.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    var scoreValue: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = scoreValue
        view.backgroundColor = color
    }
    
    
    @IBAction func reCalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
