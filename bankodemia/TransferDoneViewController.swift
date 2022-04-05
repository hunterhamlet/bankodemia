//
//  TransferDoneViewController.swift
//  bankodemia
//
//  Created by Marco Cruz Velázquez on 4/3/22.
//

import UIKit

class TransferDoneViewController: BaseUIViewController {
    private lazy var lDoneText = UILabel()
    private lazy var lThanksText = UILabel()
    private lazy var btContained = UIButton()
    private lazy var ivTransferDone = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        initUI()
        hideBackButton()

    }
    
    private func initUI() {
  
        view.addSubview(ivTransferDone)
        ivTransferDone.image = UIImage(named: Drawable.icTransferDone)
        ivTransferDone.addAnchorsAndSize(width: nil, height: nil, left: Dimensions.grid8_2, top: 150, right:Dimensions.grid8_3, bottom: nil, withAnchor: nil, relativeToView: nil)
        
        view.addSubview(lDoneText)
        lDoneText.text = StringSP.transferDone
        lDoneText.applyDarkStyle(fontSize: FontSize.size22)
        lDoneText.numberOfLines = .zero
        lDoneText.addAnchorsAndSize(width: nil, height: Dimensions.tilLargeHeight, left: Dimensions.grid8_1, top: 340, right:Dimensions.grid8_1, bottom: nil, withAnchor: nil, relativeToView: nil)
        
        
        view.addSubview(btContained)
        btContained.applySolidStyle(fontSize: FontSize.size18)
        btContained.setTitle(StringSP.bBackToStart, for: .normal)
        btContained.addTarget(self, action: #selector(backToStart), for: .touchUpInside)
        btContained.addAnchorsAndSize(width: nil, height: Dimensions.btHeight, left: Dimensions.grid8, top: nil, right: Dimensions.grid8, bottom: 50, withAnchor: nil, relativeToView: nil)
    }
    
    @objc private func backToStart() {
        let homeScreen = HomeViewController()
        moveTo(screen: homeScreen, showStyle: .fullScreen)
}

}
