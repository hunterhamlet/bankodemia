//
//  IdentityViewController.swift
//  bankodemia
//
//  Created by Marco Cruz Velázquez on 3/29/22.
//

import UIKit

class IdentityViewController: BaseUIViewController {

    private lazy var btINE = UIButton()
    private lazy var btFM3 = UIButton()
    private lazy var btPassport = UIButton()
    private lazy var lKnow = UILabel()
    private lazy var lExample2 = UILabel()
    private lazy var ivArrowINE = UIImageView()
    private lazy var ivArrowFM3 = UIImageView()
    private lazy var ivArrowPssrt = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        initUI()
    }
    
    private func initUI() {
        view.addSubview(lExample2)
        lExample2.text = StringSP.selecIdText
        lExample2.applyDarkStyle(fontSize: FontSize.size18)
        lExample2.numberOfLines = .zero
        lExample2.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8, top: 150, right:Dimensions.grid8, bottom: nil, withAnchor: nil, relativeToView: nil)
        
        view.addSubview(btINE)
        btINE.applyTextBlackGrayStyle(fontSize: FontSize.size16)
        btINE.setTitle(StringSP.ineText, for: .normal)
        btINE.addTarget(self, action: #selector(moveToINE), for: .touchUpInside)
        btINE.addAnchorsAndSize(width: Dimensions.grid7, height: Dimensions.btHeight, left: Dimensions.grid8_1, top: 230, right: nil, bottom: nil, withAnchor: nil, relativeToView: nil)
        
        view.addSubview(btFM3)
        btFM3.applyTextBlackGrayStyle(fontSize: FontSize.size16)
        btFM3.setTitle(StringSP.fm3Text, for: .normal)
        btFM3.addTarget(self, action: #selector(moveToFM3), for: .touchUpInside)
        btFM3.addAnchorsAndSize(width: nil, height: Dimensions.btHeight, left: Dimensions.grid8_1, top: 270, right: nil, bottom: nil, withAnchor: nil, relativeToView: nil)
        
        view.addSubview(btPassport)
        btPassport.applyTextBlackGrayStyle(fontSize: FontSize.size16)
        btPassport.setTitle(StringSP.pssrtText, for: .normal)
        btPassport.addTarget(self, action: #selector(moveToPasspt), for: .touchUpInside)
        btPassport.addAnchorsAndSize(width: nil, height: Dimensions.btHeight, left: Dimensions.grid8_1, top: 310, right: nil, bottom: nil, withAnchor: nil, relativeToView: nil)
        
        view.addSubview(ivArrowINE)
        ivArrowINE.image = UIImage(named: Drawable.icForward)
        ivArrowINE.isUserInteractionEnabled = true
        ivArrowINE.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(moveToINE)))
        ivArrowINE.addAnchorsAndSize(width: nil, height: nil, left: nil, top: 240, right: Dimensions.grid8_1, bottom: nil, withAnchor: nil, relativeToView: nil)
        
        view.addSubview(ivArrowFM3)
        ivArrowFM3.image = UIImage(named: Drawable.icForward)
        ivArrowFM3.isUserInteractionEnabled = true
        ivArrowFM3.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(moveToFM3)))
        ivArrowFM3.addAnchorsAndSize(width: nil, height: nil, left: nil, top: 280, right: Dimensions.grid8_1, bottom: nil, withAnchor: nil, relativeToView: nil)
        
        view.addSubview(ivArrowPssrt)
        ivArrowPssrt.image = UIImage(named: Drawable.icForward)
        ivArrowPssrt.isUserInteractionEnabled = true
        ivArrowPssrt.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(moveToPasspt)))
        ivArrowPssrt.addAnchorsAndSize(width: nil, height: nil, left: nil, top: 320, right: Dimensions.grid8_1, bottom: nil, withAnchor: nil, relativeToView: nil)

        view.addSubview(lKnow)
        lKnow.text = StringSP.knowItText
        lKnow.applyDarkStyle(fontSize: FontSize.size14)
        lKnow.numberOfLines = .zero
        lKnow.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8, top: nil, right:Dimensions.grid8, bottom: 70, withAnchor: nil, relativeToView: nil)
        
        //TODO: ADD Label : como protegermos tus documentos
        //TODO: Connect with their respective views
}
    
    @objc private func moveToINE() {
        let dataScreen = IneViewController()
        dataScreen.titleBack = StringSP.ineText //titilo lo pone a donde va la view
        moveTo(screen: dataScreen, showStyle: .fullScreen)
    }
    @objc private func moveToFM3() {
        let dataScreen = Fm3ViewController()
        dataScreen.titleBack = StringSP.fm3Text
        moveTo(screen: dataScreen, showStyle: .fullScreen)
    }
    @objc private func moveToPasspt() {
        let dataScreen = PassportViewController()
        dataScreen.titleBack = StringSP.pssrtText
        moveTo(screen: dataScreen, showStyle: .fullScreen)
    }

   
}
