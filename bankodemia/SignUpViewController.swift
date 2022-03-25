//
//  SignUpViewController.swift
//  bankodemia
//
//  Created by Marco Cruz Velázquez on 3/24/22.
//

import UIKit

class SignUpViewController: BaseUIViewController {
    
    private lazy var userEmail = CustomTextField(placeHolder: StringSP.writeEmail)
    private lazy var userPass = CustomTextField(placeHolder: StringSP.writePass, isPassField: true)
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
        lExample2.text = "Aqui recibiras comprobantes de tus movimientos e información sobre tu cuenta."
        lExample2.applyDarkStyle(fontSize: FontSize.size18)
        lExample2.numberOfLines = .zero
        lExample2.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8, top: 150, right:Dimensions.grid8, bottom: nil, withAnchor: nil, relativeToView: nil)
        
        view.addSubview(userEmail)
        userEmail.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8, top: 248, right: Dimensions.grid8)
        
        view.addSubview(btContained)
        btContained.applySolidStyle(fontSize: FontSize.size18)
        btContained.setTitle(StringSP.continueFunc, for: .normal)
        btContained.addTarget(self, action: #selector(moveToHome), for: .touchUpInside)
        btContained.addAnchorsAndSize(width: nil, height: Dimensions.btHeight, left: Dimensions.grid8, top: nil, right: Dimensions.grid8, bottom: 50, withAnchor: nil, relativeToView: nil)

        view.addSubview(lExample)
        lExample.text = "Al continuar aceptas nuestro"
        lExample.applyDarkStyle(fontSize: FontSize.size18)
        lExample.numberOfLines = .zero
        lExample.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: 70, top: nil, right:Dimensions.grid8, bottom: 100, withAnchor: nil, relativeToView: btContained)

    //TODO : needs to add a hyperlink AVISO DE PRIVACIDAD
        
        
}
    @objc private func moveToHome() {
        let dataScreen = DataViewController()
        moveTo(screen: dataScreen, showStyle: .fullScreen)
    }

   
}
