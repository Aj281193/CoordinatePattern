//
//  MainCoordinator.swift
//  Coordinator
//
//  Created by Ashish Jaiswal on 01/09/22.
//

import Foundation
import UIKit

class MainCoordinator: NSObject, Coordinator  {
    var childCoordinator: [Coordinator] = []
    var navigationController: UINavigationController
    
    required init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        navigationController.delegate = self
        let vc = MainViewController.instantiate("Main", MainViewController.self)
        let mainViewModel = MainViewModel.init(navigation: self)
        vc.mainViewModel = mainViewModel
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        navigationController.pushViewController(vc, animated: false)
    }
    
    
    func childDidFinish(_ child: Coordinator?) {
        for (index, cordinator) in childCoordinator.enumerated() {
            if cordinator === child {
                childCoordinator.remove(at: index)
                break
            }
        }
    }
    
}

extension MainCoordinator: MainNavigation {
    
    func buySubscription(to productType: Int) {
        let buyCoordinatorChild = BuyCoordinator(navigationController: navigationController)
        buyCoordinatorChild.productType = productType
        //buyCoordinatorChild.parentCoordinator = self
        childCoordinator.append(buyCoordinatorChild)
        buyCoordinatorChild.start()
    }
    
    func createAccount() {
        let accountChildCordinator = CreateAccountCordinator(navigationController: navigationController)
        //accountChildCordinator.parentCoordinator = self
        childCoordinator.append(accountChildCordinator)
        accountChildCordinator.start()
    }

}
extension MainCoordinator: UINavigationControllerDelegate {
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        guard let fromViewController = navigationController.transitionCoordinator?.viewController(forKey: .from) else {
            return
        }
        if navigationController.viewControllers.contains(fromViewController) {
            return
        }
        if let buyViewController = fromViewController as? BuyViewController {
            childDidFinish(buyViewController.viewModel.navigation as? BuyCoordinator)
        }
        if let accountViewController = fromViewController as? CreateAccountViewController {
            childDidFinish(accountViewController.viewModel.navigation as? CreateAccountCordinator)
        }
    }
}
