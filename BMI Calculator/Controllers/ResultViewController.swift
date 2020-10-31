//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Juan Diego Ocampo on 10/31/20.
//  Copyright © 2020 Diego Ocampo. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

// MARK: IB-Outlets

    @IBOutlet weak var bmiResultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
// MARK: Variables
    
    let adviceText : [String] = ["A", "B", "C"]
    
// MARK: Methods
        
    /// Tag: viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
// MARK: IB-Actions
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "recalculatePressed", sender: UIButton.self)
    }
}
