//
//  MainTabBarController.swift
//  Coordinator
//
//  Created by Ashish Jaiswal on 01/09/22.
//

import UIKit

class MainTabBarController: UITabBarController, UITabBarControllerDelegate {
    
    private let mainCordinator = MainCoordinator(navigationController: UINavigationController())
    private let buyCordinator = BuyCoordinator(navigationController: UINavigationController())
    private let accountCordinator = CreateAccountCordinator(navigationController: UINavigationController())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        
 
        mainCordinator.start()
        buyCordinator.start()
        accountCordinator.start()
        
        viewControllers = [mainCordinator.navigationController,buyCordinator.navigationController,accountCordinator.navigationController]
    }
    
}
