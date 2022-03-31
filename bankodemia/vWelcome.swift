//
//  vWelcome.swift
//  bankodemia
//
//  Created by Luis Lagos on 29/03/22.
//

import UIKit

class vWelcome: UIViewController {

    //MARK: - variables
    
    var width = UIScreen.main.bounds.width      // get the screen's width
    var height = UIScreen.main.bounds.height    // get the screen's height
    
    
    //MARK : - UI
    
    // ImageView at the top, bankodemia logo
    let ivTopImage: UIImageView = {
        
        let ivTopImage = UIImageView()
        ivTopImage.image = UIImage(named: "ic_logo")
        ivTopImage.contentMode = .center

        ivTopImage.translatesAutoresizingMaskIntoConstraints = false
        
        return ivTopImage
    } ()
    
    // 1st label
    let ltop: UILabel = {
        
        let ltop = UILabel()
        ltop.textColor = .white
        ltop.text = StringSP.ltop
        ltop.font = UIFont.systemFont(ofSize: 18, weight: UIFont.Weight(600))
        
        ltop.translatesAutoresizingMaskIntoConstraints = false

        return ltop
        
    } ()
    
    // 2nd label
    let lmiddle: UILabel = {
        
        let lmiddle = UILabel()
        lmiddle.textColor = .white
        lmiddle.text = StringSP.lmiddle
        lmiddle.font = UIFont.systemFont(ofSize: 18, weight: UIFont.Weight(600))
        
        lmiddle.translatesAutoresizingMaskIntoConstraints = false

        return lmiddle
    } ()
    
    let lTu: UILabel = {
        
        let lTu = UILabel()
        lTu.textColor = Theme.Color.blue
        lTu.text = StringSP.lTu
        lTu.font = UIFont.systemFont(ofSize: 18, weight: UIFont.Weight(600))
        
        lTu.translatesAutoresizingMaskIntoConstraints = false
        
        return lTu
    } ()
    
    
    let lmiddleRigth: UILabel = {
        
        let lmiddleRigth = UILabel()
        lmiddleRigth.textColor = .white
        lmiddleRigth.text = StringSP.lmiddleRigth
        lmiddleRigth.font = UIFont.systemFont(ofSize: 18, weight: UIFont.Weight(600))
        
        lmiddleRigth.translatesAutoresizingMaskIntoConstraints = false
        
        return lmiddleRigth

    } ()
    
    // ImageView in the middle
    let ivAppImage: UIImageView = {
        
        let ivAppImage = UIImageView()
        ivAppImage.image = UIImage(named: Drawable.logoWlcome)
        ivAppImage.contentMode = .scaleToFill

        ivAppImage.translatesAutoresizingMaskIntoConstraints = false
        
        return ivAppImage
    } ()
    
    
    
    let btnCrearCuenta: UIButton = {
     
        let btnCrearCuenta = UIButton()
        btnCrearCuenta.backgroundColor = Theme.Color.blue
        btnCrearCuenta.setTitle(StringSP.createAccount, for: .normal)
        // round the button's corners
        btnCrearCuenta.layer.cornerRadius = 10
        
        btnCrearCuenta.translatesAutoresizingMaskIntoConstraints = false

        //button action
        btnCrearCuenta.addTarget(self, action: #selector(moveToCreateAccount), for: .touchUpInside)
                
        return btnCrearCuenta
    }()



    let btnIniciarSesion: UIButton = {
     
        let btnIniciarSesion = UIButton()
        btnIniciarSesion.backgroundColor = .black
        btnIniciarSesion.setTitle(StringSP.initSession, for: .normal)
        btnIniciarSesion.setTitleColor(Theme.Color.blue, for: .normal)
        // round the button's corners
        btnIniciarSesion.layer.cornerRadius = 10
        // enable border
        btnIniciarSesion.layer.borderWidth = 1
        btnIniciarSesion.layer.borderColor = UIColor.cyan.cgColor
        
        
        btnIniciarSesion.translatesAutoresizingMaskIntoConstraints = false

        //button action
        btnIniciarSesion.addTarget(self, action: #selector(moveToInitSession), for: .touchUpInside)
                
        return btnIniciarSesion
    }()
 
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()

    }
   
    
    private func initUI() {

        view.backgroundColor = UIColor(rgb: 0x161616)
        
        // Add views
        view.addSubview(ivTopImage)
        view.addSubview(ltop)
        view.addSubview(lmiddle)
        view.addSubview(lTu)
        view.addSubview(lmiddleRigth)
        view.addSubview(ivAppImage)
        view.addSubview(btnCrearCuenta)
        view.addSubview(btnIniciarSesion)
        
        // add constraints
        
        NSLayoutConstraint.activate([
            
            // top image, bankodemia logo
            ivTopImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            ivTopImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ivTopImage.widthAnchor.constraint(equalToConstant: width),
            ivTopImage.heightAnchor.constraint(equalToConstant: 100),
            
            // 1st line label
            ltop.topAnchor.constraint(equalTo: ivTopImage.bottomAnchor, constant: 50),
            ltop.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            //2nd line label
            lmiddle.topAnchor.constraint(equalTo: ltop.bottomAnchor, constant: 10),
            lmiddle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 85),
            //2nd line label
            lTu.topAnchor.constraint(equalTo: ltop.bottomAnchor, constant: 10),
            lTu.leadingAnchor.constraint(equalTo: lmiddle.trailingAnchor),
            //2nd line label
            lmiddleRigth.topAnchor.constraint(equalTo: ltop.bottomAnchor, constant: 10),
            lmiddleRigth.leadingAnchor.constraint(equalTo: lTu.trailingAnchor),
            
            // image in the center of the screen, the app image
            ivAppImage.topAnchor.constraint(equalTo: lTu.bottomAnchor, constant: 70),
            ivAppImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ivAppImage.widthAnchor.constraint(equalToConstant: 250),
            ivAppImage.heightAnchor.constraint(equalToConstant: 250),
            
            // button crear cuenta
            btnCrearCuenta.topAnchor.constraint(equalTo: ivAppImage.bottomAnchor, constant: 50),
            btnCrearCuenta.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            btnCrearCuenta.widthAnchor.constraint(equalToConstant: width - 40),
            btnCrearCuenta.heightAnchor.constraint(equalToConstant: 50),
            
            // button iniciar sesion
            btnIniciarSesion.topAnchor.constraint(equalTo: btnCrearCuenta.bottomAnchor, constant: 20),
            btnIniciarSesion.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            btnIniciarSesion.widthAnchor.constraint(equalToConstant: width - 40),
            btnIniciarSesion.heightAnchor.constraint(equalToConstant: 50)
            
        ])
        
    } // initUI
    
    
    
    
    //MARK: - Actions
    
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


} // class vWelcome
