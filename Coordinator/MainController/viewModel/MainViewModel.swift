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
       
    init(navigation: MainNavigation) {
        self.navigation = navigation
    }
    
    func buySubscription(to product: Int) {
        navigation?.buySubscription(to: product)
    }
    
    func createAccount() {
       // coordinator?.createAccount()
        navigation?.createAccount()
    }
    
}
