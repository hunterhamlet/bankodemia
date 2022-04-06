//
//  AccountCell.swift
//  bankodemia
//
//  Created by Hamon on 06/04/22.
//

import Foundation
import UIKit

class AccountCell: UITableViewCell {
    
    var account : AccountUI?
    var position: Int = 0
    private lazy var lAlias: UILabel = UILabel()
    private lazy var lAccountBank: UILabel = UILabel()
    
    init(account: AccountUI, position: Int) {
        super.init(style: .default, reuseIdentifier: nil)
        self.account = account
        self.position = position
        initUI()
    }
    
    private func initUI() {
        self.addSubview(lAlias)
        self.addSubview(lAccountBank)
        
        setupColorBackground(position: position)
        
        lAlias.applyDarkStyle(fontSize: FontSize.size18)
        lAlias.text = account?.alias
        lAlias.addAnchorsAndSize(width: nil, height: nil, left: Dimensions.grid7, top: Dimensions.grid4, right: nil, bottom: nil, withAnchor: nil, relativeToView: nil)
        
        lAccountBank.applyDarkStyle(fontSize: FontSize.size4)
        lAccountBank.text = "\(account?.numberAccount ?? "**** **** ****")/\(account?.bank ?? "NONE")"
        lAccountBank.addAnchorsAndSize(width: nil, height: nil, left: Dimensions.grid7, top: Dimensions.grid2, right: nil, bottom: Dimensions.grid4, withAnchor: .top, relativeToView: lAlias)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
