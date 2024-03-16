//
//  SignUpView.swift
//  CooksCorner
//
//  Created by anjella on 12/3/24.
//

import UIKit
import SnapKit

class SignUpView: UIView {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Sign Up For Delicious \n Discoveries!"
        label.font = UIFont(name: "Avenir Next Medium", size: 25)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.numberOfLines = 0
        label.textColor = .white
        return label
    }()
    
    lazy var contentViewTitle: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .orange
        return view
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.font = UIFont(name: "Avenir Next Medium", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .orange
        return label
    }()
    
    lazy var nameTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.attributedPlaceholder = NSAttributedString(
            string: "Enter your name",
            attributes: [
                NSAttributedString.Key.font: UIFont(name: "Avenir Next Medium", size: 16)!,
                NSAttributedString.Key.foregroundColor: UIColor.gray
            ]
        )
        let button = UIButton(type: .custom)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -30, bottom: 0, right: 0)
        button.setImage(UIImage(named: "profileIcon"), for: .normal)
        textField.rightView = button
        textField.rightViewMode = .always
        return textField
    }()
    
    lazy var gmailLabel: UILabel = {
        let label = UILabel()
        label.text = "Gmail"
        label.font = UIFont(name: "Avenir Next Medium", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .orange
        return label
    }()
    
    lazy var gmailTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.attributedPlaceholder = NSAttributedString(
            string: "Enter your gmail",
            attributes: [
                NSAttributedString.Key.font: UIFont(name: "Avenir Next Medium", size: 16)!,
                NSAttributedString.Key.foregroundColor: UIColor.gray
            ]
        )
        let button = UIButton(type: .custom)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -30, bottom: 0, right: 0)
        button.setImage(UIImage(named: "gmailIcon"), for: .normal)
        textField.rightView = button
        textField.rightViewMode = .always
        return textField
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.font = UIFont(name: "Avenir Next Medium", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .orange
        return label
    }()
    
    lazy var passwordTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.attributedPlaceholder = NSAttributedString(
            string: "Enter your password",
            attributes: [
                NSAttributedString.Key.font: UIFont(name: "Avenir Next Medium", size: 16)!,
                NSAttributedString.Key.foregroundColor: UIColor.gray
            ]
        )
        let button = UIButton(type: .custom)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -30, bottom: 0, right: 0)
        button.setImage(UIImage(named: "eyeIcon"), for: .normal)
        button.setImage(UIImage(named: "selectedEyeIcon"), for: .selected)
        button.frame = CGRect(x: CGFloat(textField.frame.size.width - 25), y: CGFloat(5), width: CGFloat(25), height: CGFloat(25))
        button.addTarget(self, action: #selector(togglePasswordVisible), for: .touchUpInside)
        textField.rightView = button
        textField.rightViewMode = .always
        return textField
    }()
    
    lazy var repeatPasswordLabel: UILabel = {
        let label = UILabel()
        label.text = "Re-Password"
        label.font = UIFont(name: "Avenir Next Medium", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .orange
        return label
    }()
    
    lazy var repeatPasswordTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.attributedPlaceholder = NSAttributedString(
            string: "Re-Enter your Password",
            attributes: [
                NSAttributedString.Key.font: UIFont(name: "Avenir Next Medium", size: 16)!,
                NSAttributedString.Key.foregroundColor: UIColor.gray
            ]
        )
        let button = UIButton(type: .custom)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -30, bottom: 0, right: 0)
        button.setImage(UIImage(named: "eyeIcon"), for: .normal)
        button.setImage(UIImage(named: "selectedEyeIcon"), for: .selected)
        button.frame = CGRect(x: CGFloat(textField.frame.size.width - 25), y: CGFloat(5), width: CGFloat(25), height: CGFloat(25))
        button.addTarget(self, action: #selector(toggleRepeatPasswordVisible), for: .touchUpInside)
        textField.rightView = button
        textField.rightViewMode = .always
        return textField
    }()
    
    lazy var signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign Up", for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 44 / 2
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var alreadyHaveAccountLabel: UILabel = {
        let label = UILabel()
        label.text = "Already have an account?"
        label.font = UIFont(name: "Avenir Next Regular", size: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        return label
    }()
    
    lazy var signInNowButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign In Now", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.orange, for: .normal)
        button.titleLabel?.font = UIFont(name: "Avenir Next Regular", size: 12)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SignUpView: UITextFieldDelegate {
    @objc func togglePasswordVisible(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        passwordTextField.isSecureTextEntry = !passwordTextField.isSecureTextEntry
    }
    
    @objc func toggleRepeatPasswordVisible(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        repeatPasswordTextField.isSecureTextEntry = !repeatPasswordTextField.isSecureTextEntry
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.endEditing(true)
    }
}

extension SignUpView {
    private func setUp() {
        setUpSubviews()
        setUpConstraints()
    }
    
    private func setUpSubviews() {
        addSubview(contentViewTitle)
        contentViewTitle.addSubview(titleLabel)
        addSubview(nameLabel)
        addSubview(nameTextField)
        addSubview(gmailLabel)
        addSubview(gmailTextField)
        addSubview(passwordLabel)
        addSubview(passwordTextField)
        addSubview(repeatPasswordLabel)
        addSubview(repeatPasswordTextField)
        addSubview(signUpButton)
        addSubview(alreadyHaveAccountLabel)
        addSubview(signInNowButton) 
    }
    
    private func setUpConstraints() {
        contentViewTitle.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.trailing.leading.equalToSuperview()
            $0.width.equalTo(393)
            $0.height.equalTo(233)
        }
        
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(89)
            $0.leading.equalToSuperview().offset(20)
            $0.width.equalTo(250)
            $0.height.equalTo(76)
        }
        
        nameLabel.snp.makeConstraints {
            $0.top.equalTo(contentViewTitle.snp.bottom).offset(36)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-20)
            $0.height.equalTo(29)
        }
        
        nameTextField.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.bottom)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-20)
            $0.height.equalTo(44)
        }
        
        gmailLabel.snp.makeConstraints {
            $0.top.equalTo(nameTextField.snp.bottom).offset(16)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-20)
            $0.height.equalTo(29)
        }
        
        gmailTextField.snp.makeConstraints {
            $0.top.equalTo(gmailLabel.snp.bottom)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-20)
            $0.height.equalTo(44)
        }
        
        passwordLabel.snp.makeConstraints {
            $0.top.equalTo(gmailTextField.snp.bottom).offset(16)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-20)
            $0.height.equalTo(29)
        }
        
        passwordTextField.snp.makeConstraints {
            $0.top.equalTo(passwordLabel.snp.bottom)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-20)
            $0.height.equalTo(44)
        }
        
        repeatPasswordLabel.snp.makeConstraints {
            $0.top.equalTo(passwordTextField.snp.bottom).offset(16)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-20)
            $0.height.equalTo(29)
        }
        
        repeatPasswordTextField.snp.makeConstraints {
            $0.top.equalTo(repeatPasswordLabel.snp.bottom)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-20)
            $0.height.equalTo(44)
        }
        
        signUpButton.snp.makeConstraints {
            $0.top.equalTo(repeatPasswordTextField.snp.bottom).offset(26)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-20)
            $0.height.equalTo(44)
        }
        
        alreadyHaveAccountLabel.snp.makeConstraints {
            $0.bottom.equalToSuperview().offset(-80)
            $0.leading.equalToSuperview().offset(83)
            $0.height.equalTo(18)
            $0.width.equalTo(145)
        }
        
        signInNowButton.snp.makeConstraints {
            $0.bottom.equalToSuperview().offset(-80)
            $0.leading.equalTo(alreadyHaveAccountLabel.snp.trailing)
            $0.trailing.equalToSuperview().offset(-83)
            $0.height.equalTo(18) 
        }
    }
}


