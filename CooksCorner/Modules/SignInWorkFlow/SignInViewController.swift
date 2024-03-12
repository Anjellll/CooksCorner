//
//  SignInViewController.swift
//  CooksCorner
//
//  Created by anjella on 12/3/24.
//

import UIKit

class SignInViewController: UIViewController {

    private var viewModel: SignInViewModel
    private let contentView = SignInView()
    
    override func loadView() {
        view = contentView
    }
    
     init(viewModel: SignInViewModel) {
         self.viewModel = viewModel
         super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.signUpNowLabel.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
    }
    
    @objc func signUpButtonTapped() {
        let viewModel = SignUpViewModel()
        let viewController = SignUpViewController(viewModel: viewModel)
        navigationController?.pushViewController(viewController, animated: true)
    }
}

