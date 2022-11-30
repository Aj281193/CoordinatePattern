//
//  viewModel.swift
//  Coordinator
//
//  Created by Ashish Jaiswal on 02/09/22.
//

import Foundation

protocol BuyNavigation: AnyObject {
    func dismissView()
}

class BuyViewModel {
    
    weak var navigation: BuyNavigation?
    
    init(navigation: BuyNavigation) {
        self.navigation = navigation
    }
    
    
    func returnToHome() {
        navigation?.dismissView()
    }
}
