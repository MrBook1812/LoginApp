//
//  ViewController.swift
//  LoginApp
//
//  Created by Kirill Kniga on 13.02.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    @IBOutlet var userNameLabel: UITextField!
    @IBOutlet var passwordLabel: UITextField!
    
    private let username = "User"
    private let password = "1"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? WelcomeViewController else { return }
        settingsVC.welcomeUser = userNameLabel.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func logInButtonTapped() {
        if userNameLabel.text == username && passwordLabel.text == password {
            return
        } else {
            wrongPassword(with: "Incorrect username or password", andmessage: "Please try again")
        }
    }
    
    @IBAction func forgotUserNameButtonTapped() {
        wrongPassword(with: "Your Log In is:", andmessage: "\(username)")
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        wrongPassword(with: "Your Password is:", andmessage: "\(password)")
    }
    
    @IBAction  func unwind(for segue: UIStoryboardSegue) {
        userNameLabel.text = ""
        passwordLabel.text = ""
    }
   

}

// MARK: - UIAlertController
extension LoginViewController {
    private func wrongPassword(with title: String, andmessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordLabel.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
