//
//  SignUpView.swift
//  CooksCorner
//
//  Created by anjella on 12/3/24.
//

import UIKit

import UIKit

class SignUpView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SignUpView {
    private func setUp() {
        setUpSubviews()
        setUpConstraints()
    }
    
    private func setUpSubviews() {
    }
    
    private func setUpConstraints() {
    }
}


