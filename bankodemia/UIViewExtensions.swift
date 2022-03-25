//
//  UIViewExtensions.swift
//  bankodemia
//
//  Created by Hamon on 01/03/22.
//

import Foundation
import UIKit

extension UIView {

    func applyPoppinsMedium(fontSize: CGFloat = 18) -> UIFont? {
        return UIFont(name: "Poppins-Medium", size: fontSize)
    }

    func setOnClickFunction( tapAction: Selector? ) {
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: tapAction))
    }
}

