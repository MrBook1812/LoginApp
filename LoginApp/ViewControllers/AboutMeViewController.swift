//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by Kirill Kniga on 18.02.2023.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var workLabel: UILabel!
    @IBOutlet var departmentLabel: UILabel!
    @IBOutlet var positionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setGradientBackground()
        
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        workLabel.text = user.person.work
        departmentLabel.text = user.person.department
        positionLabel.text = user.person.position
    }
    
    private func setGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.systemGray.cgColor, UIColor.purple.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.3, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.3, y: 0.0)
        gradientLayer.locations = [0,1]
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
