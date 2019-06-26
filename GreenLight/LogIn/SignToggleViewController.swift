//
//  SignToggleViewController.swift
//  GreenLight
//
//  Created by HongWeonpyo on 26/06/2019.
//  Copyright © 2019 ShoppingBook. All rights reserved.
//

import UIKit

class SignToggleViewController: UIViewController {
    
    let toggleButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        
        toggleButton.setTitle("Toggle", for: .normal)
        toggleButton.backgroundColor = .blue
        toggleButton.addTarget(self, action: #selector(toggleButtonAction), for: .touchUpInside)
        view.addSubview(toggleButton)
        
        toggleButton.translatesAutoresizingMaskIntoConstraints = false
        toggleButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        toggleButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        toggleButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        toggleButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    }
    
    @objc func toggleButtonAction() {
        isSignState.toggle()
        dismiss(animated: true)
    }
}
