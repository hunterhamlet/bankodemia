//
//  EndAddContactViewController.swift
//  bankodemia
//
//  Created by Daphne  on 28/03/22.
//

//import Foundation

import UIKit

class EndAddContactViewController: BaseUIViewController {

    private lazy var lEndAddContact = UILabel()
    private lazy var btContained = UIButton()
    private lazy var ivContactImage = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideBackButton()
        initUI()
    }
    
    private func initUI() {
        showImageAndLegend()
    }
    
    private func showImageAndLegend() {
        
        view.addSubview(ivContactImage)
        ivContactImage.image = UIImage(named: Drawable.icFinalcontact)
        ivContactImage.addAnchorsAndCenter(centerX: true, centerY: nil, width: nil, height: nil, left: nil, top: 300, right: nil, bottom: nil, withAnchor: nil, relativeToView: lEndAddContact)
        
        view.addSubview(lEndAddContact)
        lEndAddContact.text = StringSP.lSuccessAddContact
        lEndAddContact.applyDarkStyle(fontSize: FontSize.size18)
        lEndAddContact.numberOfLines = .zero
        lEndAddContact.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: 60, top: 450, right:Dimensions.grid8, bottom: nil, withAnchor: nil, relativeToView: nil)
        
        view.addSubview(btContained)
        btContained.applySolidStyle(fontSize: FontSize.size18)
        btContained.setTitle("Volver a Inicio", for: .normal)
        btContained.addTarget(self, action: #selector(moveToHome), for: .touchUpInside)
        btContained.addAnchorsAndSize(width: nil, height: Dimensions.btHeight, left: Dimensions.grid8, top: nil, right: Dimensions.grid8, bottom: 50, withAnchor: nil, relativeToView: nil)
    }
    
    @objc private func moveToHome() {
        let homeScreen = HomeViewController()
        moveTo(screen: homeScreen, showStyle: .fullScreen)
    }
    
}
