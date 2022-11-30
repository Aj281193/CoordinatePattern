//
//  CreateAccountViewController.swift
//  Coordinator
//
//  Created by Ashish Jaiswal on 01/09/22.
//

import UIKit

class CreateAccountViewController: UIViewController, Storyboarded {
    
    var viewModel: CreateAccountViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        // Do any additional setup after loading the view.
    }
    
    @IBAction func returnTapped(_ sender: UIButton) {
        viewModel.returnToHome()
    }
    
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        coordinator?.didFinishCreate()
//    }

}
