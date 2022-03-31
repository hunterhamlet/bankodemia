//
//  IneViewController.swift
//  bankodemia
//
//  Created by Marco Cruz Velázquez on 3/30/22.
//

import UIKit

class IneViewController: BaseUIViewController {
    
    private lazy var btContinue = UIButton()
    private lazy var btOutlined = UIButton()
    private lazy var lExample2 = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        initUI()
    }
    
    private func initUI() {
        
        view.addSubview(lExample2)
        lExample2.text = StringSP.cameraText
        lExample2.applyDarkStyle(fontSize: FontSize.size18)
        lExample2.numberOfLines = .zero
        lExample2.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8, top: 150, right:Dimensions.grid8, bottom: nil, withAnchor: nil, relativeToView: nil)
        
        view.addSubview(btContinue)
        btContinue.applySolidStyle(fontSize: FontSize.size18)
        btContinue.setTitle(StringSP.uploadText, for: .normal)
        btContinue.addTarget(self, action: #selector(moveToPsswrd), for: .touchUpInside)
        btContinue.addAnchorsAndSize(width: nil, height: Dimensions.btHeight, left: Dimensions.grid8, top: nil, right: Dimensions.grid8, bottom: 50, withAnchor: nil, relativeToView: nil)


}
    @objc private func moveToPsswrd() {
        let dataScreen = PswViewController()
        dataScreen.titleBack = "Contraseña"//StringSP.fm3Text
        moveTo(screen: dataScreen, showStyle: .fullScreen)
    }

   
}
