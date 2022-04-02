//
//  ConfirmViewController.swift
//  bankodemia
//
//  Created by Marco Cruz Velázquez on 3/30/22.
//

import UIKit

class ConfirmViewController: BaseUIViewController {
    private lazy var lDoneText = UILabel()
    private lazy var lThanksText = UILabel()
    private lazy var btContained = UIButton()
    private lazy var ivPaperPlane = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        initUI()
        hideBackButton()

    }
    
    private func initUI() {
  
        view.addSubview(ivPaperPlane)
        ivPaperPlane.image = UIImage(named: Drawable.icPaperPlane)
        ivPaperPlane.addAnchorsAndSize(width: nil, height: 130, left: Dimensions.grid8_3, top: 150, right:Dimensions.grid8_3, bottom: nil, withAnchor: nil, relativeToView: nil)
        
        view.addSubview(lDoneText)
        lDoneText.text = StringSP.doneLabel
        lDoneText.applyDarkStyle(fontSize: FontSize.size20)
        lDoneText.numberOfLines = .zero
        lDoneText.addAnchorsAndSize(width: nil, height: Dimensions.tilLargeHeight, left: Dimensions.grid5, top: 320, right:Dimensions.grid5, bottom: nil, withAnchor: nil, relativeToView: nil)
        
        view.addSubview(lThanksText)
        lThanksText.text = StringSP.thanksLabel
        lThanksText.applyPurpleStyle(fontSize: FontSize.size20)
        lThanksText.numberOfLines = .zero
        lThanksText.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8_1, top: 40, right:Dimensions.grid8_1, bottom: nil, withAnchor: .top , relativeToView: lDoneText)
        
        view.addSubview(btContained)
        btContained.applySolidStyle(fontSize: FontSize.size18)
        btContained.setTitle(StringSP.bBackToStart, for: .normal)
        btContained.addTarget(self, action: #selector(backToStart), for: .touchUpInside)
        btContained.addAnchorsAndSize(width: nil, height: Dimensions.btHeight, left: Dimensions.grid8, top: nil, right: Dimensions.grid8, bottom: 50, withAnchor: nil, relativeToView: nil)
    }
    
    @objc private func backToStart() {
        let homeScreen = AddCardOpViewController()
        moveTo(screen: homeScreen, showStyle: .fullScreen)
}
}
