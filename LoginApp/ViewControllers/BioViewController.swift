//
//  BioViewController.swift
//  LoginApp
//
//  Created by Kirill Kniga on 18.02.2023.
//

import UIKit

class BioViewController: UIViewController {
    @IBOutlet var bioLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bioLabel.text = user.person.bio
        
        setGradientBackground()
    }
    
    private func setGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.systemGray.cgColor, UIColor.systemCyan.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.3, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.3, y: 0.0)
        gradientLayer.locations = [0,1]
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
