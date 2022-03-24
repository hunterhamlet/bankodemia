//
//  vWelcome.swift
//  bankodemia
//
//  Created by Luis Lagos on 03/03/22.
//

import UIKit

class vWelcome: UIViewController {

    //MARK: - variables
    
    var width = UIScreen.main.bounds.width      // get the screen's width
    var height = UIScreen.main.bounds.height    // get the screen's height
    
    let blackColor = UIColor(displayP3Red: 27/255, green: 38/255, blue: 49/255, alpha: 1)


    
    
    //MARK : - UI
    
    // ImageView at the top, bankodemia logo
    let ivTopImage: UIImageView = {
        
        let ivTopImage = UIImageView()
        ivTopImage.image = UIImage(named: "ic_logo")
        ivTopImage.contentMode = .center
        
        return ivTopImage
    } ()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()

    }
    
    private func initUI() {

        view.backgroundColor = blackColor
        
        // ImageView at the top, bankodemia logo
        view.addSubview(ivTopImage)
        // add constraints
        ivTopImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            ivTopImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            ivTopImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            ivTopImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20),
            ivTopImage.widthAnchor.constraint(equalToConstant: width),
            ivTopImage.heightAnchor.constraint(equalToConstant: 100)
        ])
        

        
        
        
    } // initUI
    
    
    
    


} // class vWelcome
