//
//  UITextViewExtensions.swift
//  bankodemia
//
//  Created by Hamon on 02/03/22.
//

import Foundation
import UIKit

extension UILabel {
    
    func applyDarkStyle(fontSize: CGFloat = FontSize.defaulSize) {
        self.font = UIFont(name: Theme.Font.popinsMedium, size: fontSize)
        self.textColor = .darkText
    }
    
    func applyBoldDarkStyle(fontSize: CGFloat = FontSize.defaulSize) {
        self.font = UIFont(name: Theme.Font.popinsMedium, size: fontSize)
        self.textColor = .darkText
    }
    
    func applyLightStyle(fontSize: CGFloat = FontSize.defaulSize) {
        self.font = UIFont(name: Theme.Font.popinsMedium, size: fontSize)
        self.textColor = .white
    }
    
    func isMultiline() {
        self.numberOfLines = .zero
    }
    
    func applyDarkGrayStyle(fontSize: CGFloat = FontSize.defaulSize) {
        self.font = UIFont(name: Theme.Font.popinsMedium, size: fontSize)
        self.textColor = .darkGray
    }
    func applyPurpleStyle(fontSize: CGFloat = FontSize.defaulSize) {
        self.font = UIFont(name: Theme.Font.popinsMedium, size: fontSize)
        self.textColor = .purple
    }
    
    func applyBlueStyle(fontSize: CGFloat = FontSize.defaulSize) {
        self.font = UIFont(name: Theme.Font.popinsMedium, size: fontSize)
        self.textColor = Theme.Color.blue
    }
    
    
    
}
