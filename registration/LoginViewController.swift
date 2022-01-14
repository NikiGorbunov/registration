//
//  LoginViewController.swift
//  registration
//
//  Created by Никита Горбунов on 13.01.2022.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var LogInButton: UIButton!
    
    
    private let userName = "user"
    private let password = "password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        LogInButton.layer.cornerRadius = 15
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomViewController else { return }
        welcomeVC.user = userName
    }
    
    @IBAction func LogInPressed() {
        if userNameTextField.text != userName || passwordTextField.text != password {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password"
            )
            passwordTextField.text = ""
        }
    }
    
    @IBAction func forgotUser() {
        showAlert(title: "Oops!", message: "Your name is \(userName)")
    }
    @IBAction func forgotPassword() {
        showAlert(title: "Oops!", message: "Your password is \(password)")
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
}

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}



