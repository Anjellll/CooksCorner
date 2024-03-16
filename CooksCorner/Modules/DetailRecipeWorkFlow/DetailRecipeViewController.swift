//
//  DetailRecipeViewController.swift
//  CooksCorner
//
//  Created by anjella on 15/3/24.
//

import UIKit

class DetailRecipeViewController: UIViewController {
    
    private var viewModel: DetailRecipeViewModel
    private var contentView = DetailRecipeView()
    
    init(viewModel: DetailRecipeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    override func loadView() {
        view = contentView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        updateUI()
        setupNavBar()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension DetailRecipeViewController {
    private func updateUI() {
        if let recipe = viewModel.recipe {
            contentView.updateView(recipe: recipe)
        }
    }

    private func setupNavBar() {
        if let navigationController = self.navigationController {
            navigationController.navigationBar.tintColor = .white
            navigationController.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        }
    }
}
