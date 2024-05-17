//
//  LoginViewController.swift
//  FireChat
//
//  Created by Samet Korkmaz on 17.05.2024.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
                if error != nil {
                    AlertManager.shared.showAlert(title: "Hata oluştu", message: error?.localizedDescription ?? "Bilinmeyen hata", viewController: self!)
                }
                else {
                    self!.performSegue(withIdentifier: "LoginToChat", sender: nil)
                }
            }
        }
    }
    
}
