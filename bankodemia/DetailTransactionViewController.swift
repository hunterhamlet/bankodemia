//
//  DetailTransactionViewController.swift
//  bankodemia
//
//  Created by Hamon on 06/04/22.
//

import Foundation
import UIKit

class DetailTransactionViewController: BaseUIViewController {
    
    var transactionUi: TransactionUI?
    private lazy var lCashQuantity: UILabel = UILabel()
    private lazy var lConcept: UILabel = UILabel()
    private lazy var lDateTitle: UILabel = UILabel()
    private lazy var lDateValue: UILabel = UILabel()
    private lazy var lIdTransactionTitle: UILabel = UILabel()
    private lazy var iIdTransactionValue: UILabel = UILabel()
    private lazy var lConcepTitle: UILabel = UILabel()
    private lazy var lConceptValue: UILabel = UILabel()
    private lazy var lEmisorAccount: UILabel = UILabel()
    private lazy var lEmisorValue: UILabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
    
    private func initUI() {
        addHelpIcon()
        addUserIcon()
        showTitle(title: StringSP.detailTransaction)
        addCashQuantity()
        addDate()
        addId()
        addConcept()
        addEmiserAccont()
    }
    
    private func addCashQuantity() {
        view.addSubview(lCashQuantity)
        view.addSubview(lConcept)
        
        lCashQuantity.text = "$\(transactionUi?.amount ?? "0.0")"
        lCashQuantity.applyDarkStyle(fontSize: FontSize.size22)
        lCashQuantity.addAnchorsAndCenter(centerX: true, centerY: false, width: nil, height: nil, left: nil, top: Dimensions.grid7 * 6 , right: nil, bottom: nil, withAnchor: nil, relativeToView: nil)
        
        lConcept.text = transactionUi?.concept
        lConcept.applyDarkStyle(fontSize: FontSize.size20)
        lConcept.addAnchorsAndCenter(centerX: true, centerY: nil, width: nil, height: nil, left: nil, top: Dimensions.grid4, right: nil, bottom: nil, withAnchor: .top, relativeToView: lCashQuantity)
        
    }
    
    private func addDate() {
        view.addSubview(lDateTitle)
        view.addSubview(lDateValue)
        
        lDateTitle.text = StringSP.dateAndHour
        lDateTitle.applyDarkStyle(fontSize: FontSize.size18)
        lDateTitle.addAnchorsAndSize(width: nil, height: nil, left: Dimensions.grid7, top: Dimensions.grid8, right: nil, bottom: nil, withAnchor: .top, relativeToView: lConcept)
        lDateValue.text = transactionUi?.date
        lDateValue.applyDarkStyle(fontSize: FontSize.size14)
        lDateValue.addAnchorsAndSize(width: nil, height: nil, left: Dimensions.grid7, top: Dimensions.grid2, right: nil, bottom: nil, withAnchor: .top, relativeToView: lDateTitle)
    }
    
    private func addId() {
        view.addSubview(lIdTransactionTitle)
        view.addSubview(iIdTransactionValue)
        
        lIdTransactionTitle.text = StringSP.idTranaction
        lIdTransactionTitle.applyDarkStyle(fontSize: FontSize.size18)
        lIdTransactionTitle.addAnchorsAndSize(width: nil, height: nil, left: Dimensions.grid7, top: Dimensions.grid8, right: nil, bottom: nil, withAnchor: .top, relativeToView: lDateValue)
        iIdTransactionValue.text = transactionUi?.id
        iIdTransactionValue.applyDarkStyle(fontSize: FontSize.size14)
        iIdTransactionValue.addAnchorsAndSize(width: nil, height: nil, left: Dimensions.grid7, top: Dimensions.grid2, right: nil, bottom: nil, withAnchor: .top, relativeToView: lIdTransactionTitle)
    }
    
    private func addConcept() {
        view.addSubview(lConcepTitle)
        view.addSubview(lConceptValue)
        
        lConcepTitle.text = StringSP.concept
        lConcepTitle.applyDarkStyle(fontSize: FontSize.size18)
        lConcepTitle.addAnchorsAndSize(width: nil, height: nil, left: Dimensions.grid7, top: Dimensions.grid8, right: nil, bottom: nil, withAnchor: .top, relativeToView: iIdTransactionValue)
        lConceptValue.text = transactionUi?.concept
        lConceptValue.applyDarkStyle(fontSize: FontSize.size14)
        lConceptValue.addAnchorsAndSize(width: nil, height: nil, left: Dimensions.grid7, top: Dimensions.grid2, right: nil, bottom: nil, withAnchor: .top, relativeToView: lConcepTitle)
    }
    
    private func addEmiserAccont() {
        view.addSubview(lEmisorAccount)
        view.addSubview(lEmisorValue)
        
        lEmisorAccount.text = StringSP.emiserAccount
        lEmisorAccount.applyDarkStyle(fontSize: FontSize.size18)
        lEmisorAccount.addAnchorsAndSize(width: nil, height: nil, left: Dimensions.grid7, top: Dimensions.grid8, right: nil, bottom: nil, withAnchor: .top, relativeToView: lConceptValue)
        lEmisorValue.text = transactionUi?.emiserAccount
        lEmisorValue.applyDarkStyle(fontSize: FontSize.size14)
        lEmisorValue.addAnchorsAndSize(width: nil, height: nil, left: Dimensions.grid7, top: Dimensions.grid2, right: nil, bottom: nil, withAnchor: .top, relativeToView: lEmisorAccount)
    }
    
}
