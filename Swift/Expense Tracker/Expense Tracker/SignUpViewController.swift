//
//  SignUpViewController.swift
//  Expense Tracker
//
//  Created by Prabin Kumar on 18/08/19.
//  Copyright © 2019 Prabin Kumar. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var sq: UITextField!
    
    @IBOutlet weak var sa: UITextField!
    
    @IBOutlet weak var signUp: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        firstName.borderStyle = UITextField.BorderStyle.roundedRect
        lastName.borderStyle = UITextField.BorderStyle.roundedRect
        userName.borderStyle = UITextField.BorderStyle.roundedRect
        email.borderStyle = UITextField.BorderStyle.roundedRect
        sq.borderStyle = UITextField.BorderStyle.roundedRect
        sa.borderStyle = UITextField.BorderStyle.roundedRect
        
        self.signUp.layer.cornerRadius = 14
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
