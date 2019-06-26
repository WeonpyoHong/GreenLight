//
//  MainTabBarController.swift
//  GreenLight
//
//  Created by HongWeonpyo on 26/06/2019.
//  Copyright © 2019 ShoppingBook. All rights reserved.
//

import UIKit

var isSignState = false

class MainTabBarController: UITabBarController {
    
    let homeVC = HomeViewController()
    let exploreVC = ExploreViewController()
    let loginVC = LoginViewController()
    let myVC = MypageViewController()
    let plus = UIViewController()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "baseline_home"), selectedImage: nil)
        exploreVC.tabBarItem = UITabBarItem(title: "Explore", image: UIImage(named: "baseline_explore"), selectedImage: nil)
        loginVC.tabBarItem = UITabBarItem(title: "LogIn", image: UIImage(named: "baseline_person"), selectedImage: nil)
        myVC.tabBarItem = UITabBarItem(title: "MyPage", image: UIImage(named: "baseline_person"), selectedImage: nil)
        plus.tabBarItem = UITabBarItem(title: "" , image: UIImage(named: "plus"), selectedImage: nil)
        self.delegate = self
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if !isSignState {
            self.viewControllers =  [homeVC, exploreVC, loginVC]
        } else {
            self.viewControllers =  [homeVC, exploreVC, myVC,plus]
        }
    }
    
}

extension MainTabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController == plus {
            let navi = UINavigationController(rootViewController: UploadViewController())
            present(navi, animated: false)
            return false
        }
        return true
    }
}
