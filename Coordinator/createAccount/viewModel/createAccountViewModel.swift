//
//  createAccountViewModel.swift
//  Coordinator
//
//  Created by Ashish Jaiswal on 02/09/22.
//

import Foundation

protocol CreateAccountNavigation: AnyObject {
    func dismiss()
}

class CreateAccountViewModel {
    
   // weak var coordinator: CreateAccountCordinator?
    
    weak var navigation: CreateAccountNavigation?
    
    init(navigation: CreateAccountNavigation) {
        self.navigation = navigation
    }
    
    func returnToHome() {
        navigation?.dismiss()
    }
}
