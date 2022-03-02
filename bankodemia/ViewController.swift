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

    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
    
    private func initUI() {
        view.addSubview(userEmail)
        userEmail.addAnchorsAndSize(width: nil, height: 70, left: Dimensions.grid4, top: 120, right: Dimensions.grid4)
        
        view.addSubview(userPass)
        userPass.addAnchorsAndSize(width: nil, height: 70, left: Dimensions.grid4, top: Dimensions.grid2, right: Dimensions.grid4, withAnchor: .top, relativeToView: userEmail)
    }

}

