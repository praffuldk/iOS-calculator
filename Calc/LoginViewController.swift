//
//  LoginViewController.swift
//  Calc
//
//  Created by Prafful Devarakonda on 30/08/20.
//  Copyright © 2020 Prafful Devarakonda. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBAction func login(_ sender: UIButton) {
        
    Auth.auth().signIn(withEmail: username.text!, password: password.text!) { user, error in
                         if error == nil && user != nil {
                             self.dismiss(animated: false, completion: nil)
                             print("Successful")
                             self.clear()
                         
                             
                         } else {
                             print("Error logging in: \(error!.localizedDescription)")
                         }
                     }
                 }
                 
                 func clear()
                 {
                     username.text = ""
                     password.text = ""
                 }
                 
             }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


