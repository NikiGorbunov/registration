//
//  WelcomViewController.swift
//  registration
//
//  Created by Никита Горбунов on 13.01.2022.
//

import UIKit

class WelcomViewController: UIViewController {

    @IBOutlet weak var welcomeView: UILabel!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeView.text = "Welcome, \(user.person.fullName)🙌"
    }
    
}
