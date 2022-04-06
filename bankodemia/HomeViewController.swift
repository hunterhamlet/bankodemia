//
//  HomeViewController.swift
//  bankodemia
//
//  Created by Marco Cruz Velázquez on 3/24/22.
//

import UIKit

class HomeViewController: BaseUIViewController {
    
    private lazy var lTitle: UILabel = UILabel()
    private lazy var lCashQuantity: UILabel = UILabel()
    private lazy var sendMoney: UIButton = UIButton()
    private lazy var recivedMoney: UIButton = UIButton()
    private lazy var transactionTable: UITableView = UITableView()
    private let datasource : [TransactionUI] = [TransactionUI(id: "47306BANKODER26012022011820676", concept: "La guera", hour: "07:28 PM", amount: "15.72", date: "25 de enero de 2022. 9:00 p.m.", emiserAccount: "Número de Cuenta 0000205214"),
                                                TransactionUI(id: "47306BANKODER26012022011820676", concept: "La guera", hour: "07:28 PM", amount: "15.72", date: "25 de enero de 2022. 9:00 p.m.", emiserAccount: "Número de Cuenta 0000205214")]

    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
    
    private func initUI() {
        hideBackButton()
        addLabelTitle()
        addCashQuantity()
        addUserIcon()
        addHelpIcon()
        addButtons()
        addTableView()
        addTransactionList()
    }
    
    private func addLabelTitle() {
        view.addSubview(lTitle)
        lTitle.text = StringSP.cashAvailable
        lTitle.applyDarkStyle(fontSize: FontSize.size20)
        lTitle.addAnchorsAndSize(width: nil, height: nil, left: Dimensions.grid7, top: nil, right: nil, bottom: nil, withAnchor: nil, relativeToView: nil)
        lTitle.addAnchors(left: nil, top: Dimensions.grid9, right: nil, bottom: nil, withAnchor: nil, relativeToView: nil)
    }
    
    private func addCashQuantity() {
        view.addSubview(lCashQuantity)
        lCashQuantity.text = "$160.00"
        lCashQuantity.applyDarkStyle(fontSize: FontSize.size22)
        lCashQuantity.addAnchorsAndCenter(centerX: true, centerY: false, width: nil, height: nil, left: nil, top: Dimensions.grid7, right: nil, bottom: nil, withAnchor: .top, relativeToView: lTitle)
    }
    
    private func addButtons() {
        view.addSubview(sendMoney)
        view.addSubview(recivedMoney)
        
        sendMoney.applyOutlinedStyle()
        sendMoney.setTitle(StringSP.sendMoney, for: .normal)
        sendMoney.addTarget(self, action: #selector(moveToSendMoney), for: .touchUpInside)
        sendMoney.addAnchorsAndSize(width: width / 2.5, height: Dimensions.btHeight, left: Dimensions.grid7, top: Dimensions.grid8, right: nil, bottom: nil, withAnchor: .top, relativeToView: lCashQuantity)
        
        recivedMoney.applySolidStyle()
        recivedMoney.setTitle(StringSP.recivedMoney, for: .normal)
        recivedMoney.addTarget(self, action: #selector(moveToRecivedMoney), for: .touchUpInside)
        recivedMoney.addAnchorsAndSize(width: width / 2.5, height: Dimensions.btHeight, left: nil, top: Dimensions.grid8, right: Dimensions.grid7, bottom: nil, withAnchor: .top, relativeToView: lCashQuantity)
        
    }
    
    private func addTableView() {
        view.addSubview(transactionTable)
        transactionTable.addAnchorsAndSize(width: nil, height: nil, left: Dimensions.grid0, top: Dimensions.grid7, right: Dimensions.grid0, bottom: Dimensions.grid7, withAnchor: .top, relativeToView: sendMoney)
    }
    
    private func addTransactionList() {
        transactionTable.delegate = self
        transactionTable.dataSource = self
    }
    
    @objc private func moveToSendMoney() {
        let sendMoneyScreen = AccountsToSendMoneyViewController()
        moveTo(screen: sendMoneyScreen, showStyle: .fullScreen)
    }
    
    @objc private func moveToRecivedMoney() {
        
    }

}

extension HomeViewController: UITableViewDataSource {
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let position = indexPath.row
        let transaction = datasource[position]
        return TransacationCell(transactionUI: transaction, position: position)
    }
    
}

extension HomeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Estoy en la seccion \(indexPath.section) en la celda \(indexPath.row)")
        let detailScreen = DetailTransactionViewController()

        detailScreen.transactionUi = datasource[indexPath.row]
        moveTo(screen: detailScreen, showStyle: .fullScreen)
    }
    
}
