//
//  AddContactCardOpViewController.swift
//  bankodemia
//
//  Created by Marco Cruz Velázquez on 3/27/22.
//

import UIKit

class AddCardOpViewController: BaseUIViewController {

    
    private lazy var noCard = CustomTextField(placeHolder: StringSP.numCard)
    private lazy var institution = CustomTextField(placeHolder: StringSP.instiString)
    private lazy var nombreString = CustomTextField(placeHolder: StringSP.writeName)
    private lazy var mailString = CustomTextField(placeHolder: StringSP.mailString)
    private lazy var btContained = UIButton()
    private lazy var btOutlined = UIButton()
    private lazy var btBlueClabe = UIButton()
    private lazy var btBackCard = UIButton()
//    private lazy var lExample = UILabel()
    private lazy var lExample2 = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        initUI()
    }
    
    private func initUI() {
            
       //TODO: Add back description and funtion
        
        view.addSubview(lExample2)
        lExample2.text = ""
        lExample2.applyDarkStyle(fontSize: FontSize.size18)
        lExample2.numberOfLines = .zero
        lExample2.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8, top: 150, right:Dimensions.grid8, bottom: nil, withAnchor: nil, relativeToView: nil)
        
        view.addSubview(noCard)
        noCard.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8, top: 248, right: Dimensions.grid8)
        
        view.addSubview(institution)
        institution.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8, top: Dimensions.grid2, right: Dimensions.grid8, withAnchor: .top, relativeToView: noCard)
        
        view.addSubview(nombreString)
        nombreString.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8, top: Dimensions.grid2, right: Dimensions.grid8, withAnchor: .top, relativeToView: institution)
        
        view.addSubview(mailString)
        mailString.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8, top: Dimensions.grid2, right: Dimensions.grid8, withAnchor: .top, relativeToView: nombreString)
        
        
        view.addSubview(btContained)
        btContained.applySolidStyle(fontSize: FontSize.size18)
        btContained.setTitle(StringSP.addContac, for: .normal)
//        btContained.addTarget(self, action: #selector(moveToHome), for: .touchUpInside)
        btContained.addAnchorsAndSize(width: nil, height: Dimensions.btHeight, left: Dimensions.grid8, top: nil, right: Dimensions.grid8, bottom: 50, withAnchor: nil, relativeToView: nil)

        
        view.addSubview(btBlueClabe)
        btBlueClabe.applyTextBlackStyle(fontSize: FontSize.size18)
        btBlueClabe.setTitle(StringSP.btClabe, for: .normal)
        btBlueClabe.addTarget(self, action: #selector(moveClabeScreen), for: .touchUpInside)
        btBlueClabe.addAnchorsAndSize(width: nil, height: Dimensions.btHeight, left: Dimensions.grid4, top: 170, right: Dimensions.grid10, bottom: nil, withAnchor: nil, relativeToView: nil)
        
        view.addSubview(btBackCard)
        btBackCard.applyTextBlueStyle(fontSize: FontSize.size18)
        btBackCard.setTitle(StringSP.btCard, for: .normal)
//        btBackCard.addTarget(self, action: #selector(moveClabeScreen), for: .touchUpInside)
        btBackCard.addAnchorsAndSize(width: nil, height: Dimensions.btHeight, left: Dimensions.grid8_3, top: 170, right: Dimensions.grid9 , bottom: nil, withAnchor: nil, relativeToView: nil)



        
        
}
        
@objc private func moveClabeScreen() {
    let homeScreen = AddClabeViewController()
    moveTo(screen: homeScreen, showStyle: .fullScreen)
}



}
