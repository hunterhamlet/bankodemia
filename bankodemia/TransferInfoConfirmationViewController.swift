//
//  TransferInfoConfirmationViewController.swift
//  bankodemia
//
//  Created by Hamon on 06/04/22.
//

import Foundation
import UIKit

class TransferInfoConfirmationViewController: BaseUIViewController {
    
    private let lSend: UILabel = UILabel()
    private let lSenderName: UILabel = UILabel()
    private let lBankAccount: UILabel = UILabel()
    private let lQuantity: UILabel = UILabel()
    private let lQuantityValue: UILabel = UILabel()
    private let lSPEI: UILabel = UILabel()
    private let lPayConcept: UILabel = UILabel()
    private let lPAyConceptValue: UILabel = UILabel()
    private let bTransfer : UIButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showTitle(title: StringSP.transfer)
        initUI()
    }
    
    private func initUI() {
        view.addSubview(lSend)
        view.addSubview(lSenderName)
        view.addSubview(lBankAccount)
        view.addSubview(lQuantity)
        view.addSubview(lQuantityValue)
        view.addSubview(lSPEI)
        view.addSubview(lPayConcept)
        view.addSubview(lPAyConceptValue)
        view.addSubview(bTransfer)
        
        lSend.applyDarkStyle(fontSize: FontSize.size22)
        lSend.text = "ENVIAR A"
        lSend.addAnchorsAndSize(width: nil, height: nil, left: Dimensions.grid8, top: 150, right: Dimensions.grid8, bottom: nil, withAnchor: nil, relativeToView: nil)
        
        lSenderName.applyDarkStyle(fontSize: FontSize.size22)
        lSenderName.text = "Cruz Eduardo Reveles Caldera"
        lSenderName.addAnchorsAndSize(width: nil, height: nil, left: Dimensions.grid8, top: 20, right: Dimensions.grid8, bottom: nil, withAnchor: .top, relativeToView: lSend)
        
        lBankAccount.applyDarkStyle(fontSize: FontSize.size22)
        lBankAccount.text = "4915 1573 8890 4376 / BANORTE"
        lBankAccount.addAnchorsAndSize(width: nil, height: nil, left: Dimensions.grid8, top: 10, right: Dimensions.grid8, bottom: nil, withAnchor: .top, relativeToView: lSenderName)
        
        lQuantity.applyDarkStyle(fontSize: FontSize.size22)
        lQuantity.text = "CANTIDAD"
        lQuantity.addAnchorsAndSize(width: nil, height: nil, left: Dimensions.grid8, top: 20, right: Dimensions.grid8, bottom: nil, withAnchor: .top, relativeToView: lBankAccount)
        
        lQuantityValue.applyDarkStyle(fontSize: FontSize.size22)
        lQuantityValue.text = "$150.00"
        lQuantityValue.addAnchorsAndCenter(centerX: true, centerY: nil, width: nil, height: nil, left: nil, top: 30, right: nil, bottom: nil, withAnchor: .top, relativeToView: lQuantity)
        
        lSPEI.applyBlueStyle(fontSize: FontSize.size22)
        lSPEI.text = "SPEI sin costo"
        lSPEI.addAnchorsAndCenter(centerX: true, centerY: nil, width: nil, height: nil, left: nil, top: 10, right: nil, bottom: nil, withAnchor: .top, relativeToView: lQuantityValue)
        
        lPayConcept.applyDarkStyle(fontSize: FontSize.size22)
        lPayConcept.text = "CONCEPTO DE PAGO"
        lPayConcept.addAnchorsAndSize(width: nil, height: nil, left: Dimensions.grid8, top: 40, right: Dimensions.grid8, bottom: nil, withAnchor: .top, relativeToView: lSPEI)
        
        lPAyConceptValue.applyDarkStyle(fontSize: FontSize.size22)
        lPAyConceptValue.text = "Pago croquetas gatos"
        lPAyConceptValue.addAnchorsAndSize(width: nil, height: nil, left: Dimensions.grid8, top: 10, right: Dimensions.grid8, bottom: nil, withAnchor: .top, relativeToView: lPayConcept)
        
        bTransfer.applySolidStyle()
        bTransfer.setTitle("Hacer Transferencia", for: .normal)
        bTransfer.addTarget(self, action: #selector(moveToTransferInfoConfirmation), for: .touchUpInside)
        bTransfer.addAnchorsAndSize(width: nil, height: Dimensions.btHeight, left: Dimensions.grid8, top: nil, right: Dimensions.grid8, bottom: Dimensions.grid8, withAnchor: .top, relativeToView: lPayConcept)
        
    }
    
    @objc private func moveToTransferInfoConfirmation() {
        moveTo(screen: TransferDoneViewController(), showStyle: .fullScreen)
    }
    
}
