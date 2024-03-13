//
//  HomeViewController.swift
//  CooksCorner
//
//  Created by anjella on 13/3/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    private var viewModel: HomeViewModel
    private var contentView = HomeView()
    
    private var recipeData: [RecipeModel] = [
    RecipeModel(recipeImage: "recipeImage", recipeName: "Recipe-Recipe", chiefName: "by Ainsley Harriott", recipeLikeCount: 118, recipeSavedCount: 170),
    RecipeModel(recipeImage: "recipeImage2", recipeName: "Recipe-Recipe", chiefName: "by Ainsley Harriott", recipeLikeCount: 118, recipeSavedCount: 170),
    RecipeModel(recipeImage: "recipeImage2", recipeName: "Recipe-Recipe", chiefName: "by Ainsley Harriott", recipeLikeCount: 118, recipeSavedCount: 170),
    RecipeModel(recipeImage: "recipeImage", recipeName: "Recipe-Recipe", chiefName: "by Ainsley Harriott", recipeLikeCount: 118, recipeSavedCount: 170),
    RecipeModel(recipeImage: "recipeImage", recipeName: "Recipe-Recipe", chiefName: "by Ainsley Harriott", recipeLikeCount: 118, recipeSavedCount: 170),
    RecipeModel(recipeImage: "recipeImage2", recipeName: "Recipe-Recipe", chiefName: "by Ainsley Harriott", recipeLikeCount: 118, recipeSavedCount: 170)
    ]
    
    init(viewModel: HomeViewModel) {
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
        navigationItem.hidesBackButton = true
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    private func setUpCollectionView() {
        contentView.recipeCollectionView.delegate = self
        contentView.recipeCollectionView.dataSource = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeViewController:  UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipeData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RecipeCollectionViewCell.reuseIdentifier, for: indexPath) as! RecipeCollectionViewCell
        let data = recipeData[indexPath.row]
        cell.configure(data: data)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 169, height: 209)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    }
}
