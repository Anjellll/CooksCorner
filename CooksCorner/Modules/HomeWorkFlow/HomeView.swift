//
//  HomeView.swift
//  CooksCorner
//
//  Created by anjella on 13/3/24.
//

import UIKit
import SnapKit

class HomeView: UIView {
    
    lazy var hiNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Hi, Anjella"
        label.font = UIFont(name: "Avenir Next Medium", size: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()
    
    lazy var uiDesignerCookLabel: UILabel = {
        let label = UILabel()
        label.text = "UI Designer & Cook"
        label.font = UIFont(name: "Avenir Next Regular", size: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()
    
    lazy var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .orange
        return view
    }()
    
    lazy var categoryTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Category"
        label.font = UIFont(name: "Avenir Next Medium", size: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        return label
    }()
    
    lazy var categoryLabels: UILabel = {
        let label = UILabel()
        label.text = "Breakfast                Lunch                  Dinner"
        label.font = UIFont(name: "Avenir Next Medium", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .gray
        return label
    }()
    
    lazy var recipeCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.translatesAutoresizingMaskIntoConstraints =  false
        collectionView.register(RecipeCollectionViewCell.self, forCellWithReuseIdentifier: RecipeCollectionViewCell.reuseIdentifier)
        return collectionView
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

extension HomeView {
    private func setUp() {
        setUpSubviews()
        setUpConstraints()
    }
    
    private func setUpSubviews() {
        addSubview(contentView)
        contentView.addSubview(hiNameLabel)
        contentView.addSubview(uiDesignerCookLabel)
        addSubview(categoryTitleLabel)
        addSubview(categoryLabels)
        addSubview(recipeCollectionView)
    }
    
    private func setUpConstraints() {
        contentView.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.trailing.leading.equalToSuperview()
            $0.height.equalTo(140)
        }
        
        hiNameLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(57)
            $0.leading.equalToSuperview().offset(20)
            $0.width.equalTo(250)
            $0.height.equalTo(20)
        }
        
        uiDesignerCookLabel.snp.makeConstraints {
            $0.top.equalTo(hiNameLabel.snp.bottom).offset(3)
            $0.leading.equalToSuperview().offset(20)
            $0.width.equalTo(250)
            $0.height.equalTo(20)
        }
        
        categoryTitleLabel.snp.makeConstraints {
            $0.top.equalTo(contentView.snp.bottom).offset(20)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-20)
            $0.height.equalTo(20)
        }
        
        categoryLabels.snp.makeConstraints {
            $0.top.equalTo(categoryTitleLabel.snp.bottom).offset(14)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-20)
            $0.height.equalTo(19)
        }
        
        recipeCollectionView.snp.makeConstraints {
            $0.top.equalTo(categoryLabels.snp.bottom).offset(17)
            $0.leading.trailing.bottom.equalToSuperview()
            $0.width.equalTo(169)
            $0.height.equalTo(209)
        }
    }
}


