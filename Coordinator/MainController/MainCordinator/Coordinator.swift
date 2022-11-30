//
//  Coordinator.swift
//  Coordinator
//
//  Created by Ashish Jaiswal on 01/09/22.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var childCoordinator: [Coordinator] { get set}
    var navigationController: UINavigationController { get }
    func start()
    init(navigationController: UINavigationController)
}
