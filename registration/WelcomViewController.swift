//
//  WelcomViewController.swift
//  registration
//
//  Created by Никита Горбунов on 13.01.2022.
//

import UIKit

class WelcomViewController: UIViewController {

    @IBOutlet weak var welcomView: UILabel!
    @IBOutlet weak var logOutButton: UIButton!
    
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        logOutButton.layer.cornerRadius = 15
        welcomView.text = "Welcome, \(user)"
    }
    
}
