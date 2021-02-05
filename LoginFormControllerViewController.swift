//
//  LoginFormControllerViewController.swift
//  VK_Geekbrains
//
//  Created by admin on 03.02.2021.
//

import UIKit

class LoginFormControllerViewController: UIViewController {

    override func viewDidLoad() {
        let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
    
        scrollView?.addGestureRecognizer(hideKeyboardGesture)
    }
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var userLogin: UITextField!
    
    @IBOutlet weak var userPassword: UITextField!
    
    @IBAction func userAuth(_ sender: Any) {

        let login = userLogin.text!
        let password = userPassword.text!
        if login == "admin" && password == "123456" {
            print("успешная авторизация")
        } else {
            print("неуспешная авторизация")
        }
    }
    
    @objc func hideKeyboard() {
        self.scrollView? .endEditing(true)
    }
    
}
