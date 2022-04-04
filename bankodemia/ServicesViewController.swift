//
//  ServicesViewController.swift
//  bankodemia
//
//  Created by Marco Cruz Velázquez on 4/3/22.
//

import UIKit

class ServicesViewController: BaseUIViewController {
    private lazy var lServices = UILabel()
    private lazy var ivQuestion = UIImageView()
    private lazy var ivContact = UIImageView()
    private lazy var btAddPhone = UIButton()
    private lazy var btAddPhone2 = UIButton()
    private lazy var btAddPlan = UIButton()
    private lazy var btAddPlan2 = UIButton()
    private lazy var btGas = UIButton()
    private lazy var btGas2 = UIButton()
    private lazy var btCreditCard = UIButton()
    private lazy var btCreditCard2 = UIButton()
    private lazy var btStore = UIButton()
    private lazy var btStore2 = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        initUI()
        hideBackButton()

    }
private func initUI() {
       
    view.addSubview(lServices)
    lServices.text = StringSP.lServicesLabel
    lServices.applyDarkGrayStyle(fontSize: FontSize.size22)
    lServices.numberOfLines = .zero
    lServices.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8, top: 90, right:Dimensions.grid8_1, bottom: nil, withAnchor: nil, relativeToView: nil)
        
    view.addSubview(ivQuestion)
    ivQuestion.image = UIImage(named: Drawable.iQuestion)
    ivQuestion.addAnchorsAndSize(width: 25, height: 25, left: nil, top: 55, right:Dimensions.grid7, bottom: nil, withAnchor: nil, relativeToView: nil)
    
    view.addSubview(ivContact)
    ivContact.image = UIImage(named: Drawable.iContact)
    ivContact.addAnchorsAndSize(width: 25, height: 25, left: Dimensions.grid7, top: 55, right: nil, bottom: nil, withAnchor: nil, relativeToView: nil)
    
    view.addSubview(btAddPhone)
    btAddPhone.applyBlackStyleWBorders(fontSize: FontSize.size18)
    btAddPhone.setTitle( StringSP.lAddPhoneLabel, for: .normal)
//    btAddPhone.addTarget(self, action: #selector(moveToInitSession), for: .touchUpInside)
    btAddPhone.addAnchorsAndSize(width: nil, height: Dimensions.btHeightD, left: Dimensions.grid8, top: 170, right: Dimensions.grid8, bottom: nil, withAnchor: nil, relativeToView: nil)
    view.addSubview(btAddPhone2)
    btAddPhone2.applyTextBlackGrayStyle(fontSize: FontSize.size16)
    btAddPhone2.setTitle( StringSP.lAddPhoneLabel2 , for: .normal)
    btAddPhone2.contentHorizontalAlignment = .left
//    btAddPhone2.addTarget(self, action: #selector(moveToInitSession), for: .touchUpInside)
    btAddPhone2.addAnchorsAndSize(width: nil, height: Dimensions.btHeightD, left: Dimensions.grid8, top: 190, right: Dimensions.grid8, bottom: nil, withAnchor: nil, relativeToView: nil)
    
    view.addSubview(btAddPlan)
    btAddPlan.applyBlackStyleWBorders(fontSize: FontSize.size18)
    btAddPlan.setTitle( StringSP.lAddPlanLabel, for: .normal)
//    btAddPlan.addTarget(self, action: #selector(moveToInitSession), for: .touchUpInside)
    btAddPlan.addAnchorsAndSize(width: nil, height: Dimensions.btHeightD, left: Dimensions.grid8, top: 250, right: Dimensions.grid8, bottom: nil, withAnchor: nil, relativeToView: nil)
    view.addSubview(btAddPlan2)
    btAddPlan2.applyTextBlackGrayStyle(fontSize: FontSize.size16)
    btAddPlan2.setTitle( StringSP.lAddPlanLabel2 , for: .normal)
    btAddPlan2.contentHorizontalAlignment = .left
//    btAddPlan2.addTarget(self, action: #selector(moveToInitSession), for: .touchUpInside)
    btAddPlan2.addAnchorsAndSize(width: nil, height: Dimensions.btHeightD, left: Dimensions.grid8, top: 270, right: Dimensions.grid8, bottom: nil, withAnchor: nil, relativeToView: nil)
    
    
    view.addSubview(btGas)
    btGas.applyBlackStyleWBorders(fontSize: FontSize.size18)
    btGas.setTitle(StringSP.lAddGasLabel, for: .normal)
//    btGas.addTarget(self, action: #selector(moveToInitSession), for: .touchUpInside)
    btGas.addAnchorsAndSize(width: nil, height: Dimensions.btHeightD, left: Dimensions.grid8, top: 330, right: Dimensions.grid8, bottom: nil, withAnchor: nil, relativeToView: nil)
    view.addSubview(btGas2)
    btGas2.applyTextBlackGrayStyle(fontSize: FontSize.size16)
    btGas2.setTitle( StringSP.lAddGasLabel2, for: .normal)
    btGas2.contentHorizontalAlignment = .left
//    btGas2.addTarget(self, action: #selector(moveToInitSession), for: .touchUpInside)
    btGas2.addAnchorsAndSize(width: nil, height: Dimensions.btHeightD, left: Dimensions.grid8, top: 350, right: Dimensions.grid8, bottom: nil, withAnchor: nil, relativeToView: nil)
    
    view.addSubview(btCreditCard)
    btCreditCard.applyBlackStyleWBorders(fontSize: FontSize.size18)
    btCreditCard.setTitle( StringSP.lAddcredit , for: .normal)
//    btCreditCard.addTarget(self, action: #selector(moveToInitSession), for: .touchUpInside)
    btCreditCard.addAnchorsAndSize(width: nil, height: Dimensions.btHeightD, left: Dimensions.grid8, top: 410, right: Dimensions.grid8, bottom: nil, withAnchor: nil, relativeToView: nil)
    view.addSubview(btCreditCard2)
    btCreditCard2.applyTextBlackGrayStyle(fontSize: FontSize.size16)
    btCreditCard2.setTitle( StringSP.lAddcredit2, for: .normal)
    btCreditCard2.contentHorizontalAlignment = .left
//    btCreditCard2.addTarget(self, action: #selector(moveToInitSession), for: .touchUpInside)
    btCreditCard2.addAnchorsAndSize(width: nil, height: Dimensions.btHeightD, left: Dimensions.grid8, top: 430, right: Dimensions.grid8, bottom: nil, withAnchor: nil, relativeToView: nil)
    
    view.addSubview(btStore)
    btStore.applyBlackStyleWBorders(fontSize: FontSize.size18)
    btStore.setTitle( StringSP.lAddStore, for: .normal)
//    btStore.addTarget(self, action: #selector(moveToInitSession), for: .touchUpInside)
    btStore.addAnchorsAndSize(width: nil, height: Dimensions.btHeightD, left: Dimensions.grid8, top: 490, right: Dimensions.grid8, bottom: nil, withAnchor: nil, relativeToView: nil)
    view.addSubview(btStore2)
    btStore2.applyTextBlackGrayStyle(fontSize: FontSize.size16)
    btStore2.setTitle( StringSP.lAddStore2, for: .normal)
    btStore2.contentHorizontalAlignment = .left
//    btStore2.addTarget(self, action: #selector(moveToInitSession), for: .touchUpInside)
    btStore2.addAnchorsAndSize(width: nil, height: Dimensions.btHeightD, left: Dimensions.grid8, top: 510, right: Dimensions.grid8, bottom: nil, withAnchor: nil, relativeToView: nil)
    
    
    }
}
