//
//  LoginVC.swift
//  InstagramMDB
//
//  Created by Rini Vasan on 2/22/20.
//  Copyright © 2020 Rini Vasan. All rights reserved.
//

import UIKit
import Firebase


class LoginVC: UIViewController {

    @IBOutlet weak var loginLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func logInButton(_ sender: Any) {
        performSegue(withIdentifier: "toFeedVC", sender: self)

    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func handleLogin() {
        let email = emailTextField.text!
        let password = passwordTextField.text!
        
        let auth = Auth.auth()
        auth.signIn(withEmail: email, password: password) { (user, error) in
            func displayError(_ message:String) {
                    let alertView = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
                    alertView.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                    self.present(alertView, animated: true, completion: nil)
            }
        
            self.performSegue(withIdentifier: "toFeedVC", sender: self)

        }
        
    }
    
   
}
