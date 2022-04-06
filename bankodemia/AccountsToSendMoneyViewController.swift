//
//  AccountsToSendMoneyViewController.swift
//  bankodemia
//
//  Created by Hamon on 06/04/22.
//

import Foundation
import UIKit

class AccountsToSendMoneyViewController: BaseUIViewController {
    
    private lazy var contactTable: UITableView = UITableView()
    private lazy var addAccount: UIImageView = UIImageView()
    private let dataSource: [AccountUI] = [AccountUI(alias: "Cruz Eduardo Reveles Caldera", numberAccount: "4915 1573 8890 4376", bank: "BANORTE"), AccountUI(alias: "Cruz Eduardo Reveles Caldera", numberAccount: "4915 1573 8890 4376", bank: "BANORTE"), AccountUI(alias: "Cruz Eduardo Reveles Caldera", numberAccount: "4915 1573 8890 4376", bank: "BANORTE"), AccountUI(alias: "Cruz Eduardo Reveles Caldera", numberAccount: "4915 1573 8890 4376", bank: "BANORTE"), AccountUI(alias: "Cruz Eduardo Reveles Caldera", numberAccount: "4915 1573 8890 4376", bank: "BANORTE"), AccountUI(alias: "Cruz Eduardo Reveles Caldera", numberAccount: "4915 1573 8890 4376", bank: "BANORTE")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showTitle(title: StringSP.sendMoneyTitle)
        initUI()
        addAccountList()
    }
    
    private func initUI() {
        view.addSubview(contactTable)
        view.addSubview(addAccount)
        
        contactTable.addAnchorsAndSize(width: nil, height: nil, left: Dimensions.grid0, top: Dimensions.grid9, right: Dimensions.grid0, bottom: Dimensions.grid8, withAnchor: nil, relativeToView: nil)
        addAccount.image = UIImage(named: Drawable.addNewAccount)
        addAccount.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(moveToAddAccount)))
        addAccount.addAnchorsAndSize(width: Dimensions.grid7, height: Dimensions.grid7, left: nil, top: Dimensions.grid8_3, right: Dimensions.grid7, bottom: nil, withAnchor: nil, relativeToView: nil)
    }
    
    private func addAccountList() {
        contactTable.delegate = self
        contactTable.dataSource = self
    }
    
    @objc private func moveToAddAccount() {
        //MARK: MOVE TO ADD NEW ACCOUNT
    }
    
}


extension AccountsToSendMoneyViewController: UITableViewDataSource {
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let position = indexPath.row
        let account = dataSource[position]
        return AccountCell(account: account, position: position)
    }
    
}

extension AccountsToSendMoneyViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let transferConfirmation = TransferInfoConfirmationViewController()
        moveTo(screen: transferConfirmation, showStyle: .fullScreen)
    }
    
}
