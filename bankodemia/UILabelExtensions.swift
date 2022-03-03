//
//  UITextViewExtensions.swift
//  bankodemia
//
//  Created by Hamon on 02/03/22.
//

import Foundation
import UIKit

extension UILabel {
    
    func applyStyle(fontSize: CGFloat = FontSize.defaulSize) {
        self.font = UIFont(name: Theme.Font.popinsMedium, size: fontSize)
        self.textColor = .darkText
    }
    
}
