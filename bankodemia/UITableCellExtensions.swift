//
//  UITableCellExtensions.swift
//  bankodemia
//
//  Created by Hamon on 06/04/22.
//

import Foundation
import UIKit

extension UITableViewCell {
    
    func setupColorBackground(position: Int) {
        if ((position + 1)%2 != 0) {
            self.backgroundColor = .white
        } else {
            //TODO: ADD GRAY COLOR
            self.backgroundColor =  Theme.Color.containerTable
        }
    }
    
}
