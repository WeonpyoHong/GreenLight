//
//  LoginViewController.swift
//  GreenLight
//
//  Created by HongWeonpyo on 26/06/2019.
//  Copyright © 2019 ShoppingBook. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    let signinButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signinButton.setTitle("Signin", for: .normal)
        signinButton.backgroundColor = .red
        signinButton.addTarget(self, action: #selector(signinButtonAction), for: .touchUpInside)
        view.addSubview(signinButton)
        
        signinButton.translatesAutoresizingMaskIntoConstraints = false
        signinButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        signinButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        signinButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        signinButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        
        
    }
    
    @objc func signinButtonAction() {
        present(SignToggleViewController(), animated: true)
    }
    
    
}
