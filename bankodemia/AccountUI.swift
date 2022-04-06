//
//  AccountUI.swift
//  bankodemia
//
//  Created by Hamon on 06/04/22.
//

import Foundation

class AccountUI {
    
    var alias: String?
    var numberAccount: String?
    var bank: String?
    
    init(alias: String, numberAccount: String, bank: String) {
        self.alias = alias
        self.numberAccount = numberAccount
        self.bank = bank
    }
    
}
