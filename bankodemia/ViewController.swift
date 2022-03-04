//
//  ViewController.swift
//  bankodemia
//
//  Created by Hamon on 17/02/22.
//

import UIKit

class ViewController: BaseUIViewController {
    
    
    private lazy var userEmail = CustomTextField(placeHolder: StringSP.writeEmail)
    private lazy var userPass = CustomTextField(placeHolder: StringSP.writePass, isPassField: true)
    private lazy var btContained = UIButton()
    private lazy var btOutlined = UIButton()
    private lazy var lExample = UILabel()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
    
    private func initUI() {
        view.addSubview(userEmail)
        userEmail.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8, top: 120, right: Dimensions.grid8)
        
        view.addSubview(userPass)
        userPass.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8, top: Dimensions.grid2, right: Dimensions.grid8, withAnchor: .top, relativeToView: userEmail)
        
        view.addSubview(btContained)
        btContained.applySolidStyle(fontSize: FontSize.size18)
        btContained.setTitle("Contained", for: .normal)
        btContained.addAnchorsAndSize(width: nil, height: Dimensions.btHeight, left: Dimensions.grid8, top: Dimensions.grid4, right: Dimensions.grid8, bottom: nil, withAnchor: .top, relativeToView: userPass)
        
        view.addSubview(btOutlined)
        btOutlined.applyOutlinedStyle(fontSize: FontSize.size18)
        btOutlined.setTitle("Outlined", for: .normal)
        btOutlined.addAnchorsAndSize(width: nil, height: Dimensions.btHeight, left: Dimensions.grid8, top: Dimensions.grid4, right: Dimensions.grid8, bottom: nil, withAnchor: .top, relativeToView: btContained)
        
        view.addSubview(lExample)
        lExample.text = "Aquí recibirás comprobantes de tus movimientos e inormación sobre tu cuenta"
        lExample.applyStyle(fontSize: FontSize.size18)
        lExample.numberOfLines = .zero
        lExample.addAnchorsAndSize(width: nil, height: 100, left: Dimensions.grid8, top: Dimensions.grid4, right: Dimensions.grid8, bottom: nil, withAnchor: .top, relativeToView: btOutlined)
    }

     
}

