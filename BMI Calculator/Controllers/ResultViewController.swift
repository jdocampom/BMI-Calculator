//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Juan Diego Ocampo on 31/10/2020.
//  Copyright © 2020 Juan Diego Ocampo. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
// MARK: Variables
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
// MARK: IB-Outlets

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
// MARK: Methods
    
    /// Tag: viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
// MARK: IB-Actions
    
    /// Tag: recalculatePressed()
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
