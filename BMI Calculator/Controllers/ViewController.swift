//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Juan Diego Ocampo on 31/10/2020.
//  Copyright © 2020 Juan Diego Ocampo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
// MARK: IB-Outlets

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var currentHeight: UILabel!
    @IBOutlet weak var currentWeight: UILabel!
    
// MARK: Methods
    
    /// Tag: viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
// MARK: IB-Actions
    
    /// Tag: heightSliderChanged()
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        currentHeight.text = "\(String(format: "%.2f", heightSlider.value)) m"
        
    }
    
    /// Tag: weightSliderChanged()
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        currentWeight.text = "\(String(format: "%.1f", weightSlider.value)) kg"
    }
    
    /// Tag: weightSliderChanged()
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let BMI = weight/pow(height, 2)
        performSegue(withIdentifier: "calculatePressed", sender: UIButton.self)
    }
}
