//
//  DetailRecipeViewController.swift
//  CooksCorner
//
//  Created by anjella on 15/3/24.
//

import UIKit

class DetailRecipeViewController: UIViewController {
    
    private var viewModel: DetailRecipeViewModel
    
    init(viewModel: DetailRecipeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
