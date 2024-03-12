//
//  SignUpViewController.swift
//  CooksCorner
//
//  Created by anjella on 12/3/24.
//

import UIKit

class SignUpViewController: UIViewController {

    private var viewModel: SignUpViewModel
    
     init(viewModel: SignUpViewModel) {
         self.viewModel = viewModel
         super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    }

}
