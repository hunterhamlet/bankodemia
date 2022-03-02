//
//  CustomTextField.swift
//  bankodemia
//
//  Created by Hamon on 01/03/22.
//
import Foundation
import UIKit

class CustomTextField: UIView {

    private lazy var tfInformation: UITextField = UITextField()
    private lazy var tlUpperPlaceHolder: UILabel = UILabel()
    private lazy var tlError: UILabel = UILabel()
    private lazy var containerTextField = UIView()
    private lazy var iconPass: UIImageView = UIImageView()
    private lazy var placeHolder: String = ""
    private lazy var isPassField: Bool = false
    private lazy var addErrorFunction: Bool = false
    private lazy var showError: Bool = false
    private lazy var backgroundColorField: UIColor = UIColor()

    init(placeHolder: String = "NONE", isPassField: Bool = false, addErrorFunction: Bool = false, backgroundColorField: UIColor = .white) {
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.placeHolder = placeHolder
        self.isPassField = isPassField
        self.addErrorFunction = addErrorFunction
        self.backgroundColorField = backgroundColorField
        initUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func initUI() {
        setupContainer()
        setupTextFieldContainer()
        setupTextField()
        setupUpperPlaceHolder()
        if (addErrorFunction) {
            setupError()
        }
    }

    private func setupContainer() {
        self.backgroundColor = backgroundColorField
    }

    private func setupUpperPlaceHolder() {
        tlUpperPlaceHolder.text = placeHolder
        if let font = applyPoppinsMedium(fontSize: 10) {
            tlUpperPlaceHolder.font = font
        }
        tlUpperPlaceHolder.backgroundColor = backgroundColorField
        self.addSubview(tlUpperPlaceHolder)
        tlUpperPlaceHolder.addAnchorsAndSize(width: nil, height: 14, left: 0, top: 0, right: nil, bottom: nil, withAnchor: .right, relativeToView: nil)

    }

    private func setupTextField() {
        tfInformation.placeholder = placeHolder
        tfInformation.isSecureTextEntry = isPassField
        containerTextField.addSubview(tfInformation)
        setupPassOptions()
        tfInformation.addAnchorsAndCenter(centerX: nil, centerY: true, width: nil, height: nil, left: nil, top: 4, right: nil, bottom: 4)
        if (addErrorFunction) {
            tfInformation.addTarget(self, action: #selector(onTextChanged), for: .editingChanged)
        }
    }

    private func setupTextFieldContainer() {
        self.addSubview(containerTextField)
        containerTextField.addAnchorsAndSize(width: nil, height: nil, left: 0, top: 20, right: 0, bottom: 5, withAnchor: nil, relativeToView: nil)
        containerTextField.layer.cornerRadius = 4.0
        containerTextField.layer.borderWidth = 1
        containerTextField.layer.borderColor = Theme.Color.blue.cgColor
    }

    private func setupPassOptions() {
        if (isPassField) {
            tfInformation.isSecureTextEntry = true
            iconPass.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
            iconPass.image = UIImage(named: "ic_show_pass")
            containerTextField.addSubview(iconPass)
            iconPass.isUserInteractionEnabled = true
            iconPass.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onTapPass)))
            tfInformation.addAnchors(left: nil, top: nil, right: 8, bottom: nil, withAnchor: .right, relativeToView: iconPass)
            tfInformation.addAnchors(left: 8, top: nil, right: nil, bottom: nil)
            iconPass.addAnchorsAndCenter(centerX: nil, centerY: true, width: 20, height: 20, left: nil, top: nil, right: nil, bottom: nil)
            iconPass.addAnchors(left: nil, top: nil, right: 20, bottom: nil)
        } else {
            tfInformation.addAnchorsAndCenter(centerX: true, centerY: nil, width: nil, height: nil, left: 8, top: nil, right: 8, bottom: nil)
        }
    }

    func togglePassIcon() {
        if (tfInformation.isSecureTextEntry) {
            iconPass.image = UIImage(named: "ic_show_pass")
        } else {
            iconPass.image = UIImage(named: "ic_hide_pass")
        }
    }

    func getText() -> String {
        return tfInformation.text ?? ""
    }

    func setupError() {
        self.addSubview(tlError)
        tlError.textColor = .red
        tlError.isHidden = true
        tlError.addAnchorsAndSize(width: nil, height: 20, left: nil, top: 4, right: nil, bottom: nil, withAnchor: .top,relativeToView: containerTextField)
    }

    @objc private func onTapPass() {
        tfInformation.isSecureTextEntry.toggle()
        togglePassIcon()
    }

    @objc private func onTextChanged() {
        if (showError) {
            clearError()
            showError = false
        }
    }

    func showErrorMessage(errorMessage: String) {
        tlError.text = errorMessage
        showError = true
        tlError.isHidden = false
    }

    private func clearError() {
        tlError.isHidden = true
    }

}
