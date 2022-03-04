//
//  BaseViewController.swift
//  bankodemia
//
//  Created by Hamon on 01/03/22.
//

import Foundation
import UIKit

/*
Class that provide share function
 */
open class BaseUIViewController: UIViewController {
    
    lazy var width : CGFloat = UIScreen.main.bounds.width
    lazy var height : CGFloat = UIScreen.main.bounds.height
    
    private lazy var ivMainLogo: UIImageView = UIImageView()
    private lazy var ivBack: UIImageView = UIImageView()
    private lazy var lBackTitle: UILabel = UILabel()
    
    var titleBack: String = ""
    
    open override func viewDidLoad() {
        view.backgroundColor = Theme.Color.background
        addMainLogo()
        addBackContainer()
    }

    /*
     This function hide main logo
     */
    func hideLogo() {
        ivMainLogo.isHidden = true
    }
    
    /*
     This function show main logo
     */
    func showLogo() {
        ivMainLogo.isHidden = false
    }
    
    /*
     This add main logo in screen
     */
    private func addMainLogo() {
        view.addSubview(ivMainLogo)
        ivMainLogo.image = UIImage(named: "ic_main_logo")
        ivMainLogo.addAnchorsAndCenter(centerX: true, width: 70, height: 40, top: 48)
    }
    
    private func addBackContainer() {
        view.addSubview(ivBack)
        ivBack.image = UIImage(named: Drawable.icBack)
        ivBack.isUserInteractionEnabled = true
        ivBack.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onBackPress)))
        ivBack.addAnchorsAndSize(width: nil, height: nil, left: Dimensions.grid6, top: Dimensions.grid6, right: nil, bottom: nil, withAnchor: .top, relativeToView: ivMainLogo)
        
        view.addSubview(lBackTitle)
        lBackTitle.text = titleBack
        lBackTitle.applyDarkStyle(fontSize: FontSize.size10)
        lBackTitle.addAnchorsAndSize(width: nil, height: nil, left: nil, top: Dimensions.grid4_5, right: nil, bottom: nil, withAnchor: .top, relativeToView: ivMainLogo)
        lBackTitle.addAnchors(left: Dimensions.grid4, top: nil, right: nil, bottom: nil, withAnchor: .left, relativeToView: ivBack)
    }
    
    /*
     This function return mian logo
     */
    func getIvMainLogo() -> UIImageView {
        return ivMainLogo
    }
    
    @objc private func onBackPress() {
        dismiss(animated: true)
    }
    
}

