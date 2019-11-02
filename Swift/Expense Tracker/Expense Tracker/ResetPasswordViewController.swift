//
//  ResetPasswordViewController.swift
//  Expense Tracker
//
//  Created by Prabin Kumar on 18/08/19.
//  Copyright © 2019 Prabin Kumar. All rights reserved.
//

import UIKit

class ResetPasswordViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var secQues: UILabel!
    @IBOutlet weak var secAns: UITextField!
    
    @IBOutlet weak var newPassLabel: UILabel!
    
    @IBOutlet weak var confirmPassLabel: UILabel!
    
    @IBOutlet weak var newPass: UITextField!
    
    @IBOutlet weak var confirmPass: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        email.borderStyle = UITextField.BorderStyle.roundedRect
        secAns.borderStyle = UITextField.BorderStyle.roundedRect
        newPass.borderStyle = UITextField.BorderStyle.roundedRect
        confirmPass.borderStyle = UITextField.BorderStyle.roundedRect
        
        secQues.isHidden = true
        secAns.isHidden = true
        newPassLabel.isHidden = true
        confirmPassLabel.isHidden = true
        newPass.isHidden = true
        confirmPass.isHidden = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func multiFunc(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let sendData: [String: Any] = ["email": email.text!]
        appDelegate.makePostCall(conString: "user/forget/", sendData: sendData){[](responseData) in
            print(responseData)
            DispatchQueue.main.async {
                if responseData["Question"] != nil{
                    print("Ok")
                    self.secQues.text = responseData["Question"] as? String
                    self.secQues.isHidden = false
                    self.secAns.isHidden = false
                }
            }
        }
        
    
        newPassLabel.isHidden = false
        confirmPassLabel.isHidden = false
        newPass.isHidden = false
        confirmPass.isHidden = false
    }
    
    
    

}
