//
//  CreateAccountCordinator.swift
//  Coordinator
//
//  Created by Ashish Jaiswal on 01/09/22.
//

import Foundation
import UIKit

class CreateAccountCordinator: Coordinator {

    weak var parentCoordinator: MainCoordinator?
    
    var childCoordinator: [Coordinator] = []
    var navigationController: UINavigationController
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = CreateAccountViewController.instantiate("Main", CreateAccountViewController.self)
        let createAccoutVm = CreateAccountViewModel.init(navigation: self)
        vc.viewModel = createAccoutVm
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 2)
        //vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
//    func didFinishCreate() {
//        parentCoordinator?.childDidFinish(self)
//    }
    
}

extension CreateAccountCordinator: CreateAccountNavigation {
    func dismiss() {
        self.navigationController.popViewController(animated: false)
    }
}
