//
//  LoginViewController.swift
//  registration
//
//  Created by Никита Горбунов on 13.01.2022.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: IBOutlet
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var LogInButton: UIButton!
    
    
    private let human = User.getUser()
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomViewController {
                welcomeVC.user = human
            }
        }
    }
    
    @IBAction func LogInPressed() {
        if userNameTextField.text != human.login || passwordTextField.text != human.password {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password"
            )
            passwordTextField.text = ""
        }
    }
    
    @IBAction func forgotUser() {
        showAlert(title: "Oops!", message: "Your name is \(human.login)")
    }
    @IBAction func forgotPassword() {
        showAlert(title: "Oops!", message: "Your password is \(human.password)")
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
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



