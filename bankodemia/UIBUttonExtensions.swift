//
//  UIBUttonExtensions.swift
//  bankodemia
//
//  Created by Hamon on 02/03/22.
//

import Foundation
import UIKit

extension UIButton {
    
    func applySolidStyle(fontSize : CGFloat = FontSize.defaulSize) {
        self.backgroundColor = Theme.Color.blue
        self.setTitleColor(.white, for: .normal)
        self.layer.cornerRadius = Dimensions.grid1_5
        self.titleLabel?.font = UIFont(name: Theme.Font.popinsMedium, size: fontSize)
    }
    
    func applyOutlinedStyle(fontSize : CGFloat = FontSize.defaulSize) {
        self.setTitleColor(Theme.Color.blue, for: .normal)
        self.layer.borderWidth = Dimensions.grid0_5
        self.layer.borderColor = Theme.Color.blue.cgColor
        self.titleLabel?.font = UIFont(name: Theme.Font.popinsMedium, size: fontSize)
        self.layer.cornerRadius = Dimensions.grid1_5
    }
    
    func applyTextBlueStyle(fontSize : CGFloat = FontSize.defaulSize) {
        self.setTitleColor(Theme.Color.blue, for: .normal)
        self.layer.borderWidth = Dimensions.grid0
        self.layer.borderColor = Theme.Color.blue.cgColor
        self.titleLabel?.font = UIFont(name: "Arial Bold", size: fontSize)
        self.layer.cornerRadius = Dimensions.grid0
    }
    
    func applyTextBlackStyle(fontSize : CGFloat = FontSize.defaulSize) {
        self.setTitleColor(Theme.Color.black, for: .normal)
        self.layer.borderWidth = Dimensions.grid0
        //self.layer.borderColor = Theme.Color.blue.cgColor
        self.titleLabel?.font = UIFont(name: "Arial Bold", size: fontSize)
        //self.layer.cornerRadius = Dimensions.grid0
    }
    
}
