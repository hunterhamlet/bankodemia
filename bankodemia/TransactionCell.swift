//
//  TransactionCell.swift
//  bankodemia
//
//  Created by Hamon on 06/04/22.
//

import Foundation
import UIKit

class TransacationCell: UITableViewCell {
    
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    private let lNameTransacion: UILabel = UILabel()
    private let lHourTransaction: UILabel = UILabel()
    private let lAmount: UILabel = UILabel()
    
    private var transactionUI: TransactionUI?
    private var position: Int = 0
    
    init(transactionUI: TransactionUI, position: Int) {
        super.init(style: .default, reuseIdentifier: nil)
        self.transactionUI = transactionUI
        self.position = position
        initUI()
    }
    
    private func initUI() {
        self.addSubview(lNameTransacion)
        self.addSubview(lHourTransaction)
        self.addSubview(lAmount)
        
        if ((position + 1)%2 != 0) {
            self.backgroundColor = .white
        } else {
            //TODO: ADD GRAY COLOR
            self.backgroundColor = .darkGray
        }
        
        if let notNullTransaction = transactionUI {
            
            lNameTransacion.text = notNullTransaction.title
            lNameTransacion.applyDarkStyle(fontSize: FontSize.size18)
            lNameTransacion.addAnchorsAndSize(width: nil, height: nil, left: Dimensions.grid7, top: Dimensions.grid7, right: Dimensions.grid7, bottom: nil, withAnchor: nil, relativeToView: nil)
            
            lHourTransaction.text = notNullTransaction.hour
            lHourTransaction.applyDarkStyle(fontSize: FontSize.size16)
            lHourTransaction.addAnchorsAndSize(width: nil, height: nil, left: Dimensions.grid7, top: Dimensions.grid2, right: Dimensions.grid7, bottom: Dimensions.grid4, withAnchor: .top, relativeToView: lNameTransacion)
            
            lAmount.text = "$\(notNullTransaction.amount ?? "0.0")"
            lAmount.applyBlueStyle(fontSize: FontSize.size16)
            lAmount.addAnchorsAndCenter(centerX: nil, centerY: true, width: nil, height: nil, left: nil, top: nil, right: Dimensions.grid7, bottom: nil, withAnchor: nil, relativeToView: nil)
            
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}
