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
    
    open override func viewDidLoad() {
        view.backgroundColor = Theme.Color.background
        addMainLogo()
    }

    /*
     Function to move beetwen screens
     */
    func moveTo(screen: UIViewController, showStyle: UIModalPresentationStyle = .automatic) {
        screen.modalPresentationStyle = showStyle
        present(screen, animated: true)
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
    
    /*
     This function return mian logo
     */
    func getIvMainLogo() -> UIImageView {
        return ivMainLogo
    }
    
}

