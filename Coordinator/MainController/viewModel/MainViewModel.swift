//
//  MainViewModel.swift
//  Coordinator
//
//  Created by Ashish Jaiswal on 02/09/22.
//

import Foundation
import UIKit

protocol MainNavigation : AnyObject {
   func buySubscription(to productType: Int)
   func createAccount()
}

class MainViewModel {
    
    weak var navigation: MainNavigation?
    
    //weak var coordinator: MainCoordinator?
//    var buyAction: ((_ productType: Int) -> Void)?
//    var createAcountAction: (() -> Void)?

    
    init(navigation: MainNavigation) {
        self.navigation = navigation
    }
    
    func buySubscription(to product: Int) {
        // coordinator?.buySubscription(to: product.selectedSegmentIndex)
        //buyAction?(product.selectedSegmentIndex)
        navigation?.buySubscription(to: product)
    }
    
    func createAccount() {
       // coordinator?.createAccount()
        navigation?.createAccount()
    }
    
}
