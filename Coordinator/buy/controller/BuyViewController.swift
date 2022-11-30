//
//  BuyViewController.swift
//  Coordinator
//
//  Created by Ashish Jaiswal on 01/09/22.
//

import UIKit

class BuyViewController: UIViewController, Storyboarded  {
    
    var viewModel: BuyViewModel!
    var selectedProduct = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
    }
    
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        coordinator?.didFinishBuying()
//    }
    
    @IBAction func mainButtonTapped(_ sender: UIButton) {
        viewModel.returnToHome()
    }
    
}
