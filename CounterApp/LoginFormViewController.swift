//
//  LoginFormViewController.swift
//  CounterApp
//
//  Created by Manyuchi, Carrington C on 2026/02/20.
//

import UIKit

class LoginFormViewController: UIViewController {
    
    @IBOutlet private weak var usernameLabel: UILabel!
    @IBOutlet private weak var usernameTextField: UITextField!
    @IBOutlet private weak var passwordLabel: UILabel!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet weak var successErrorLabel: UILabel!
    
    let expectedUsername = "fullstackCoder"
    let expectedPassword = "randomPassword"

    override func viewDidLoad() {
        super.viewDidLoad()
        successErrorLabel.text = ""
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        guard let username = usernameTextField.text else {
            return
        }
        
        guard let password = passwordTextField.text else {
            return
        }
        
        if username != expectedUsername && password != expectedPassword {
            successErrorLabel.text = "Incorrect username and password"
            successErrorLabel.textColor = .red
            return
        }
        
        if username != expectedUsername {
            successErrorLabel.text = "Incorrect Username"
            successErrorLabel.textColor = .red
            return
        }
        
        if password != expectedPassword {
            successErrorLabel.text = "Incorrect Password"
            successErrorLabel.textColor = .red
            return
        }
        
        successErrorLabel.text = "Login Successful"
        successErrorLabel.textColor = .green

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
