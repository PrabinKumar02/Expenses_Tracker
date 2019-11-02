//
//  ViewController.swift
//  Expense Tracker
//
//  Created by Prabin Kumar on 03/08/19.
//  Copyright © 2019 Prabin Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.loginButton.layer.cornerRadius = 14
        
    }

    @IBAction func loginUser(_ sender: Any) {
        print(userName.text!)
        print(password.text!)
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let sendData: [String: Any] = ["userName": userName.text!, "password": password.text!]
        appDelegate.makePostCall(conString: "user/", sendData: sendData){[](responseData) in
            print(responseData["Access"]!)
        }
        
    }
    
}

