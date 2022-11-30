//
//  Storyboard.swift
//  Coordinator
//
//  Created by Ashish Jaiswal on 01/09/22.
//

import Foundation
import UIKit

protocol Storyboarded: AnyObject {
    static func instantiate(_ name: String,_ id: Any) -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate(_ name: String,_ id: Any) -> Self {
        let id = String(describing: id)
        let storyboard = UIStoryboard(name: name, bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
