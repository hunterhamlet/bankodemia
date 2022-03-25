//
//  ViewController.swift
//  bankodemia
//
//  Created by Hamon on 17/02/22.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    private lazy var ivLogoApp = UIImageView()
    private lazy var ivWelcomeImage = UIImageView()
    private lazy var lWelcomeLegend = UILabel()
    private lazy var btCreateAccount = UIButton()
    private lazy var btInitSession = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
    
    private func initUI() {
        view.backgroundColor = UIColor(rgb: 0x161616)
        setupLogoApp()
        setupLogoAndLegend()
        addButtons()
    }
    
    private func setupLogoApp() {
        view.addSubview(ivLogoApp)
        ivLogoApp.image = UIImage(named: Drawable.logoBankodemia)
        ivLogoApp.addAnchorsAndSize(width: nil, height: 85, left: Dimensions.grid7, top: 100, right: Dimensions.grid7, bottom: nil, withAnchor: nil, relativeToView: nil)
    }
    
    private func setupLogoAndLegend() {
        view.addSubview(lWelcomeLegend)
        lWelcomeLegend.text = StringSP.welcomeLegend
        lWelcomeLegend.textAlignment = .center
        lWelcomeLegend.applyLightStyle(fontSize: FontSize.size20)
        lWelcomeLegend.isMultiline()
        lWelcomeLegend.addAnchorsAndCenter(centerX: true, centerY: nil, width: nil, height: 100, left: nil, top: Dimensions.grid8, right: nil, bottom: nil, withAnchor: .top, relativeToView: ivLogoApp)
        
        view.addSubview(ivWelcomeImage)
        ivWelcomeImage.image = UIImage(named: Drawable.logoWlcome)
        ivWelcomeImage.addAnchorsAndCenter(centerX: true, centerY: nil, width: nil, height: nil, left: nil, top: Dimensions.grid8, right: nil, bottom: nil, withAnchor: .top, relativeToView: lWelcomeLegend)
    }
    
    private func addButtons() {
        
        view.addSubview(btInitSession)
        btInitSession.applyOutlinedStyle(fontSize: FontSize.size18)
        btInitSession.setTitle(StringSP.initSession, for: .normal)
        btInitSession.addTarget(self, action: #selector(moveToInitSession), for: .touchUpInside)
        btInitSession.addAnchorsAndSize(width: nil, height: Dimensions.btHeight, left: Dimensions.grid8, top: nil, right: Dimensions.grid8, bottom: Dimensions.grid8, withAnchor: .top, relativeToView: btCreateAccount)
        
        view.addSubview(btCreateAccount)
        btCreateAccount.applySolidStyle(fontSize: FontSize.size18)
        btCreateAccount.setTitle(StringSP.createAccount, for: .normal)
        btCreateAccount.addTarget(self, action: #selector(moveToCreateAccount), for: .touchUpInside)
        btCreateAccount.addAnchorsAndSize(width: nil, height: Dimensions.btHeight, left: Dimensions.grid8, top: nil, right: Dimensions.grid8, bottom: Dimensions.grid6, withAnchor: .bottom, relativeToView: btInitSession)
        
    }
    
    @objc private func moveToCreateAccount() {
        let createAccount = SignUpViewController()
        createAccount.titleBack = "Crea una cuenta"
        moveTo(screen:createAccount, showStyle: .fullScreen )
    }
    
    @objc private func moveToInitSession() {
        let singUser = SingInViewController()
        singUser.titleBack = "Crea una cuenta"
        moveTo(screen:singUser, showStyle: .fullScreen )
    }

}

