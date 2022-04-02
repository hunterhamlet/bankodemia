//
//  LoadingViewController.swift
//  bankodemia
//
//  Created by Marco Cruz Velázquez on 3/30/22.
//

import UIKit

class LoadingViewController: UIViewController {
    private lazy var lCreateText = UILabel()
    private lazy var ivBK_image = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        initUI()

    }
    
    private func initUI() {
  
    view.addSubview(ivBK_image)
    ivBK_image.image = UIImage(named: Drawable.icBL_logoL)
    ivBK_image.addAnchorsAndSize(width: nil, height: 130, left: Dimensions.grid8_3, top: 250, right:Dimensions.grid8_3, bottom: nil, withAnchor: nil, relativeToView: nil)
            
    view.addSubview(lCreateText)
    lCreateText.text = StringSP.waitLabel
    lCreateText.applyDarkStyle(fontSize: FontSize.size20)
    lCreateText.numberOfLines = .zero
    lCreateText.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8, top: 400, right:Dimensions.grid8, bottom: nil, withAnchor: nil, relativeToView: nil)
        
        
    }
}
