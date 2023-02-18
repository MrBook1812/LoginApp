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
        
        bioLabel.text = "Кирилл Книга получил высшее музыкальное образование по классу кларнета. 6 лет преподавал в детской музыкальной школе класс кларнета и саксофона. Все это время параллельно работал мастером по обслуживанию сети и iMacов мелкого предприятия, где и познакомился с техникой apple. В августе 2021 года устроился на должность Инженера технической поддержки. Теперь музыка это хобби."

        setGradientBackground()
    }
    
    private func setGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.systemGray.cgColor, UIColor.systemMint.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.3, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.3, y: 0.0)
        gradientLayer.locations = [0,1]
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
}