//
//  ViewController.swift
//  Coordinator
//
//  Created by Ashish Jaiswal on 01/09/22.
//

import UIKit

class MainViewController: UIViewController, Storyboarded {
 
    var mainViewModel: MainViewModel!
    
    @IBOutlet weak var product: UISegmentedControl!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
    }

    @IBAction func buyTapped(_ sender: UIButton) {
        mainViewModel.buySubscription(to: product.selectedSegmentIndex)
    }
    
    @IBAction func createTapped(_ sender: UIButton) {
        mainViewModel.createAccount()
    }
    
}

