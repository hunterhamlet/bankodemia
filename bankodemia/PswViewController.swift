//
//  PswViewController.swift
//  bankodemia
//
//  Created by Marco Cruz Velázquez on 3/30/22.
//

import UIKit

class PswViewController: BaseUIViewController {
    
    private lazy var userPswText = CustomTextField(placeHolder: StringSP.pswText)
    private lazy var userConfirmPsw = CustomTextField(placeHolder: StringSP.confirmPswText, isPassField: true)
    private lazy var btContained = UIButton()
    private lazy var btOutlined = UIButton()
    private lazy var lInstruction = UILabel()
    private lazy var lCreateText = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        initUI()
    }
    
    private func initUI() {
  
        
        view.addSubview(lCreateText)
        lCreateText.text = StringSP.headText
        lCreateText.applyDarkStyle(fontSize: FontSize.size20)
        lCreateText.numberOfLines = .zero
        lCreateText.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8, top: 120, right:Dimensions.grid8, bottom: nil, withAnchor: nil, relativeToView: nil)
        
        view.addSubview(lInstruction)
        lInstruction.text = StringSP.secondHeadText
        lInstruction.applyDarkGrayStyle(fontSize: FontSize.size4)
        lInstruction.numberOfLines = .zero
        lInstruction.addAnchorsAndSize(width: nil, height: Dimensions.tilLargeHeight, left: Dimensions.grid8, top: 170, right:Dimensions.grid4, bottom: nil, withAnchor: nil, relativeToView: nil)
        
        view.addSubview(userPswText)
        userPswText.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8, top: 330, right: Dimensions.grid8)
        
        view.addSubview(userConfirmPsw)
        userConfirmPsw.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8, top: Dimensions.grid2, right: Dimensions.grid8, withAnchor: .top, relativeToView: userPswText)
        
        view.addSubview(btContained)
        btContained.applySolidStyle(fontSize: FontSize.size18)
        btContained.setTitle(StringSP.createPswText, for: .normal)
        btContained.addTarget(self, action: #selector(moveToHome), for: .touchUpInside)
        btContained.addAnchorsAndSize(width: nil, height: Dimensions.btHeight, left: Dimensions.grid8, top: nil, right: Dimensions.grid8, bottom: 50, withAnchor: nil, relativeToView: nil)

        
}

@objc private func moveToHome() {
    let homeScreen = LoadingViewController()
    moveTo(screen: homeScreen, showStyle: .fullScreen)
}

}
