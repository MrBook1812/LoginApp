//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Kirill Kniga on 14.02.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welocomeLabel: UILabel!
    @IBOutlet var hiLabel: UILabel!
    
    var welcomeUser: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welocomeLabel.text = "Hello, \(user.person.name) \(user.person.surname)"
        hiLabel.text = "👋"
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
