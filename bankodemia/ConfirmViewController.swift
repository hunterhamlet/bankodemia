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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        initUI()
        hideBackButton()

    }
    
    private func initUI() {
  
    view.addSubview(lDoneText)
    lDoneText.text = StringSP.doneLabel
    lDoneText.applyDarkStyle(fontSize: FontSize.size20)
    lDoneText.numberOfLines = .zero
    lDoneText.addAnchorsAndSize(width: nil, height: Dimensions.tilLargeHeight, left: Dimensions.grid8, top: 350, right:Dimensions.grid4, bottom: nil, withAnchor: nil, relativeToView: nil)
        
        view.addSubview(lThanksText)
        lDoneText.text = StringSP.thanksLabel
        lDoneText.applyDarkStyle(fontSize: FontSize.size20)
        lDoneText.numberOfLines = .zero
        lDoneText.addAnchorsAndSize(width: nil, height: Dimensions.tilLargeHeight, left: Dimensions.grid8, top: 450, right:Dimensions.grid4, bottom: nil, withAnchor: nil, relativeToView: nil)
    }
}
