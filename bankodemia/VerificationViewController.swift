//
//  VerificationViewController.swift
//  bankodemia
//
//  Created by Marco Cruz Velázquez on 3/29/22.
//

import UIKit

class VerificationViewController: BaseUIViewController {
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
        lExample2.text = StringSP.headIdentityText
        lExample2.applyDarkStyle(fontSize: FontSize.size18)
        lExample2.numberOfLines = .zero
        lExample2.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8, top: 150, right:Dimensions.grid8, bottom: nil, withAnchor: nil, relativeToView: nil)

        
        view.addSubview(lExample)
        lExample.text = StringSP.headIdentity2Text
        lExample.applyDarkGrayStyle(fontSize: FontSize.size4)
        lExample.numberOfLines = .zero
        lExample.addAnchorsAndSize(width: nil, height: Dimensions.tilLargeHeight, left: Dimensions.grid8, top: 220, right:Dimensions.grid8, bottom: nil, withAnchor: nil, relativeToView: nil)

        view.addSubview(btContained)
        btContained.applySolidStyle(fontSize: FontSize.size18)
        btContained.setTitle(StringSP.okText, for: .normal)
        btContained.addTarget(self, action: #selector(moveToIdentity), for: .touchUpInside)
        btContained.addAnchorsAndSize(width: nil, height: Dimensions.btHeight, left: Dimensions.grid8, top: nil, right: Dimensions.grid8, bottom: 50, withAnchor: nil, relativeToView: nil)

}
    @objc private func moveToIdentity() {
        let dataScreen = IdentityViewController()
        dataScreen.titleBack = StringSP.checkID //titilo lo pone a donde va la view
        moveTo(screen: dataScreen, showStyle: .fullScreen)
    }

   
}
