//
//  MypageViewController.swift
//  GreenLight
//
//  Created by HongWeonpyo on 26/06/2019.
//  Copyright © 2019 ShoppingBook. All rights reserved.
//

import UIKit

class MypageViewController: UIViewController {
    
    let signoutButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        signoutButton.setTitle("Signout", for: .normal)
        signoutButton.backgroundColor = .green
        signoutButton.addTarget(self, action: #selector(signoutButtonAction), for: .touchUpInside)
        view.addSubview(signoutButton)
        
        signoutButton.translatesAutoresizingMaskIntoConstraints = false
        signoutButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        signoutButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        signoutButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        signoutButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    @objc func signoutButtonAction() {
        present(SignToggleViewController(), animated: true)
    }
    
}
