//
//  DataViewController.swift
//  bankodemia
//
//  Created by Marco Cruz Velázquez on 3/25/22.
//

import UIKit

class DataViewController: UIViewController {
    
    private lazy var name = CustomTextField(placeHolder: StringSP.writeName)
    private lazy var lastName = CustomTextField(placeHolder: StringSP.writeLastName, isPassField: false)
    private lazy var ocupation = CustomTextField(placeHolder: StringSP.ocupation)
    private lazy var dateOfBirth = CustomTextField(placeHolder: StringSP.dateOfBirth)
    private lazy var btContained = UIButton()
    private lazy var btOutlined = UIButton()
    private lazy var lExample = UILabel()
    private lazy var lExample2 = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        initUI()
    }
    
    private func initUI() {
            
        //TODO : Buttons to back needs to add
        
        view.addSubview(lExample2)
        lExample2.text = "Escribelos tal y como aparecen en tu\nidentificacion oficial sin abreviaturas"
        lExample2.applyDarkStyle(fontSize: FontSize.size18)
        lExample2.numberOfLines = .zero
        lExample2.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8, top: 150, right:Dimensions.grid8, bottom: nil, withAnchor: nil, relativeToView: nil)
        
        view.addSubview(name)
        name.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8, top: 248, right: Dimensions.grid8)
        
        view.addSubview(lastName)
        lastName.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8, top: Dimensions.grid2, right: Dimensions.grid8, withAnchor: .top, relativeToView: name)
        
        view.addSubview(ocupation)
        ocupation.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8, top: Dimensions.grid2, right: Dimensions.grid8, withAnchor: .top, relativeToView: lastName)
        
        view.addSubview(dateOfBirth)
        dateOfBirth.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8, top: Dimensions.grid2, right: Dimensions.grid8, withAnchor: .top, relativeToView: ocupation)
        
        
        view.addSubview(btContained)
        btContained.applySolidStyle(fontSize: FontSize.size18)
        btContained.setTitle(StringSP.continueFunc, for: .normal)
        btContained.addTarget(self, action: #selector(moveToHome), for: .touchUpInside)
        btContained.addAnchorsAndSize(width: nil, height: Dimensions.btHeight, left: Dimensions.grid8, top: nil, right: Dimensions.grid8, bottom: 50, withAnchor: nil, relativeToView: nil)

        view.addSubview(lExample)
        lExample.text = "Esta informacion es necesaria para verificar tu identidad."
        lExample.applyDarkStyle(fontSize: FontSize.size18)
        lExample.numberOfLines = .zero
        lExample.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: 70, top: nil, right:Dimensions.grid8, bottom: 130, withAnchor: nil, relativeToView: btContained)

    //TODO : needs to add a hyperlink as mockup said : bankodemia@.com.mx
        
        
}

@objc private func moveToHome() {
    let homeScreen = HomeViewController()
    moveTo(screen: homeScreen, showStyle: .fullScreen)
}



}
