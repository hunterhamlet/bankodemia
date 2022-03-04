//
//  UIViewControllerExtensions.swift
//  bankodemia
//
//  Created by Hamon on 03/03/22.
//

import Foundation
import UIKit

extension UIViewController {
    
    func moveTo(screen: UIViewController, showStyle: UIModalPresentationStyle = .automatic) {
        screen.modalPresentationStyle = showStyle
        present(screen, animated: true)
    }
    
}
