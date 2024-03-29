//
//  ProfileViewController.swift
//  CooksCorner
//
//  Created by anjella on 14/3/24.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private var viewModel: ProfileViewModel
    private let contentView = ProfileView()
    
    init(viewModel: ProfileViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    override func loadView() {
        view = contentView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpCollectionView()
    }
    
    private func setUpCollectionView() {
        contentView.recipeCollectionView.delegate = self
        contentView.recipeCollectionView.dataSource = self
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ProfileViewController:  UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel.getRecipeCount()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RecipeCollectionViewCell.reuseIdentifier, for: indexPath) as! RecipeCollectionViewCell
        cell.configure(data: viewModel.getRecipe(index: indexPath.row))
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let recipe = viewModel.getRecipe(index: indexPath.row)
        let detailRecipeViewModel = DetailRecipeViewModel(recipe: recipe)
        let detailRecipeViewController = DetailRecipeViewController(viewModel: detailRecipeViewModel)
        navigationController?.pushViewController(detailRecipeViewController, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 169, height: 209)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    }
}
