//
//  SignInView.swift
//  CooksCorner
//
//  Created by anjella on 12/3/24.
//

import UIKit
//import SnapKit

class SignInView: UIView {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome Back \n To CooksCorner"
        label.font = UIFont(name: "Avenir Next Medium", size: 25)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    lazy var contentViewTitle: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .orange
        return view
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

extension SignInView {
    private func setUp() {
        setUpSubviews()
        setUpConstraints()
    }
    
    private func setUpSubviews() {
        addSubview(contentViewTitle)
        contentViewTitle.addSubview(titleLabel)
    }
    
    private func setUpConstraints() {
       
    }
}


