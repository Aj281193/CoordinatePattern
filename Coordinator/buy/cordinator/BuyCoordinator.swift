//
//  BuyCoordinator.swift
//  Coordinator
//
//  Created by Ashish Jaiswal on 01/09/22.
//

import UIKit

class BuyCoordinator: Coordinator {
    
   // weak var parentCoordinator: MainCoordinator?
    var productType: Int = 0
    var childCoordinator: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = BuyViewController.instantiate("Main", BuyViewController.self)
        let buyViewModel = BuyViewModel.init(navigation: self)
        vc.viewModel = buyViewModel
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 1)
        vc.selectedProduct = productType
        navigationController.pushViewController(vc, animated: false)
    }
    
    
}

extension BuyCoordinator:  BuyNavigation {
    func dismissView() {
        self.navigationController.popViewController(animated: false)
    }
}
