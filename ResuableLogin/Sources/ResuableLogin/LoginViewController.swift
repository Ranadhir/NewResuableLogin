//
//  LoginViewController.swift
//  ResuableLogin
//
//  Created by Ranadheer on 21/09/25.
//

import UIKit

@available(iOS 13.0, *)
public class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    

    public init() {
        super.init(nibName: "LoginViewController", bundle: Bundle.module)
    }

    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .systemBackground
        passwordField.isSecureTextEntry = true
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
    }
    
    @objc private func loginTapped() {
        let email = emailField.text ?? ""
        let password = passwordField.text ?? ""
        print("Email: \(email), Password: \(password)")
    }
    
    
}
