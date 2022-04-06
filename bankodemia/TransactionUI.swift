//
//  TransactionUI.swift
//  bankodemia
//
//  Created by Hamon on 06/04/22.
//

import Foundation

class TransactionUI {
    
    var id: String?
    var concept: String?
    var hour: String?
    var amount: String?
    var date: String?
    var emiserAccount: String?
    
    init(id: String, concept: String, hour: String, amount: String, date: String, emiserAccount: String) {
        self.id = id
        self.concept = concept
        self.hour = hour
        self.amount = amount
        self.date = date
        self.emiserAccount = emiserAccount
    }
    
}
