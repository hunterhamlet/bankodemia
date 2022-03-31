//
//  LoadingViewController.swift
//  bankodemia
//
//  Created by Marco Cruz Velázquez on 3/30/22.
//

import UIKit

class LoadingViewController: UIViewController {
    private lazy var lCreateText = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        initUI()

    }
    
    private func initUI() {
  
    view.addSubview(lCreateText)
    lCreateText.text = StringSP.waitLabel
    lCreateText.applyDarkStyle(fontSize: FontSize.size20)
    lCreateText.numberOfLines = .zero
    lCreateText.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8, top: 380, right:Dimensions.grid8, bottom: nil, withAnchor: nil, relativeToView: nil)
    }
}
