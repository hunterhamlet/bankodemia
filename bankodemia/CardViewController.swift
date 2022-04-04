//
//  CardViewController.swift
//  bankodemia
//
//  Created by Marco Cruz Velázquez on 4/3/22.
//

import UIKit

class CardViewController: BaseUIViewController {
    private lazy var lDoneText = UILabel()
    private lazy var lCard = UILabel()
    private lazy var lNoCard = UILabel()
    private lazy var lNoCard2 = UILabel()
    private lazy var lValid = UILabel()
    private lazy var lValid2 = UILabel()
    private lazy var lCvv = UILabel()
    private lazy var lCvv2 = UILabel()
    private lazy var btContained = UIButton()
    private lazy var ivBkCard = UIImageView()
    private lazy var ivQuestion = UIImageView()
    private lazy var ivContact = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        initUI()
        hideBackButton()

    }
    
    private func initUI() {
        
        view.addSubview(lCard)
        lCard.text = StringSP.cardLabel
        lCard.applyDarkGrayStyle(fontSize: FontSize.size22)
        lCard.numberOfLines = .zero
        lCard.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8, top: 90, right:Dimensions.grid8_1, bottom: nil, withAnchor: nil, relativeToView: nil)
  
        view.addSubview(ivBkCard)
        ivBkCard.image = UIImage(named: Drawable.bankodemiaCard)
        ivBkCard.addAnchorsAndSize(width: 80, height: 320, left: Dimensions.grid8_3, top: 150, right:Dimensions.grid8_3, bottom: nil, withAnchor: nil, relativeToView: nil)
        
        view.addSubview(ivQuestion)
        ivQuestion.image = UIImage(named: Drawable.iQuestion)
        ivQuestion.addAnchorsAndSize(width: 25, height: 25, left: nil, top: 55, right:Dimensions.grid7, bottom: nil, withAnchor: nil, relativeToView: nil)
        
        
        view.addSubview(ivContact)
        ivContact.image = UIImage(named: Drawable.iContact)
        ivContact.addAnchorsAndSize(width: 25, height: 25, left: Dimensions.grid7, top: 55, right: nil, bottom: nil, withAnchor: nil, relativeToView: nil)
        
        
        view.addSubview(lNoCard)
        lNoCard.text = StringSP.cardNumLabel
        lNoCard.applyDarkStyle(fontSize: FontSize.size22)
        lNoCard.numberOfLines = .zero
        lNoCard.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8_1, top: 30, right:Dimensions.grid8_1, bottom: nil, withAnchor: .top, relativeToView: ivBkCard)
        
        view.addSubview(lNoCard2)
        lNoCard2.text = StringSP.cardNumeration
        lNoCard2.applyDarkGrayStyle(fontSize: FontSize.size22)
        lNoCard2.numberOfLines = .zero
        lNoCard2.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8_1, top: 50, right:Dimensions.grid8_1, bottom: nil, withAnchor: .top, relativeToView: ivBkCard)
        
        view.addSubview(lValid)
        lValid.text = StringSP.lValidLabel
        lValid.applyDarkStyle(fontSize: FontSize.size22)
        lValid.numberOfLines = .zero
        lValid.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8_1, top: 80, right: nil, bottom: nil, withAnchor: .top , relativeToView: ivBkCard)
        view.addSubview(lValid2)
        lValid2.text = StringSP.lValidLabel2
        lValid2.applyDarkGrayStyle(fontSize: FontSize.size22)
        lValid2.numberOfLines = .zero
        lValid2.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: Dimensions.grid8_1, top: 100, right: nil , bottom: nil, withAnchor: .top, relativeToView: ivBkCard)
        
        view.addSubview(lCvv)
        lCvv.text = StringSP.lCvvLabel
        lCvv.applyDarkStyle(fontSize: FontSize.size22)
        lCvv.numberOfLines = .zero
        lCvv.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: nil, top: 80, right: Dimensions.grid8_3, bottom: nil, withAnchor: .top , relativeToView: ivBkCard)
        
        view.addSubview(lCvv2)
        lCvv2.text = StringSP.lCvvLabel2
        lCvv2.applyDarkGrayStyle(fontSize: FontSize.size22)
        lCvv2.numberOfLines = .zero
        lCvv2.addAnchorsAndSize(width: nil, height: Dimensions.tilHeight, left: nil, top: 100, right: Dimensions.grid8_3 , bottom: nil, withAnchor: .top, relativeToView: ivBkCard)
        

    }
    


}
