//
//  RecipeCollectionViewCell.swift
//  CooksCorner
//
//  Created by anjella on 13/3/24.
//

import UIKit
import SnapKit

class RecipeCollectionViewCell: UICollectionViewCell, ReuseIdentifying {
    
    private lazy var recipeIcon: UIImageView = {
        var image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 15
        image.clipsToBounds = true
        image.image = UIImage(named: "recipeImage")
        return image
    }()
    
    private lazy var recipeNameLabel: UILabel = {
        var label = UILabel()
        label.font = UIFont(name: "Avenir Next Medium", size: 16)
        label.textColor = UIColor.white
        return label
    }()
    
    private lazy var recipeChiefNameLabel: UILabel = {
        var label = UILabel()
        label.font = UIFont(name: "Avenir Next", size: 10)
        label.textColor = UIColor.white
        label.text = "by Kattoobekova"
        return label
    }()
    
    private lazy var likeIcon: UIImageView = {
        var image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "likeIcon")
        return image
    }()
    
    private lazy var savedIcon: UIImageView = {
        var image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "savedIcon")
        return image
    }()
    
    private lazy var likeCountLabel: UILabel = {
        var label = UILabel()
        label.font = UIFont(name: "Avenir Next", size: 12)
        label.textColor = UIColor.white
        label.text = "188"
        return label
    }()
    
    private lazy var savedCountLabel: UILabel = {
        var label = UILabel()
        label.font = UIFont(name: "Avenir Next", size: 12)
        label.textColor = UIColor.white
        label.text = "130"
        return label
    }()
    
    func configure(data: RecipeModel) {
        recipeNameLabel.text = data.recipeName
        recipeIcon.image = UIImage(named: data.recipeImage)
        recipeChiefNameLabel.text = data.chiefName
        likeCountLabel.text = String("\(data.recipeLikeCount)")
        savedCountLabel.text = String("\(data.recipeSavedCount)")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension RecipeCollectionViewCell {
    private func setUpUI() {
        setUpSubviews()
        setUpConstraints()
    }
    
    private func setUpSubviews() {
        addSubview(recipeIcon)
        recipeIcon.addSubview(recipeNameLabel)
        recipeIcon.addSubview(recipeChiefNameLabel)
        recipeIcon.addSubview(likeIcon)
        recipeIcon.addSubview(savedIcon)
        recipeIcon.addSubview(likeCountLabel)
        recipeIcon.addSubview(savedCountLabel)
    }
    
    private func setUpConstraints() {
        recipeIcon.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.leading.equalToSuperview()
            $0.height.equalTo(209)
            $0.width.equalTo(169)
        }
        
        recipeNameLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(130)
            $0.leading.equalToSuperview().offset(12)
            $0.width.equalTo(150)
            $0.height.equalTo(24)
        }
        
        recipeChiefNameLabel.snp.makeConstraints {
            $0.top.equalTo(recipeNameLabel.snp.bottom)
            $0.leading.equalToSuperview().offset(12)
            $0.width.equalTo(150)
            $0.height.equalTo(15)
        }
        
        likeIcon.snp.makeConstraints {
            $0.top.equalTo(recipeChiefNameLabel.snp.bottom).offset(10)
            $0.leading.equalToSuperview().offset(12)
            $0.width.height.equalTo(14)
        }
        
        likeCountLabel.snp.makeConstraints {
            $0.top.equalTo(recipeChiefNameLabel.snp.bottom).offset(10)
            $0.leading.equalTo(likeIcon.snp.trailing).offset(4)
            $0.width.equalTo(24)
            $0.height.equalTo(14)
        }
        
        savedIcon.snp.makeConstraints {
            $0.top.equalTo(recipeChiefNameLabel.snp.bottom).offset(10)
            $0.leading.equalTo(likeCountLabel.snp.trailing).offset(4)
            $0.width.height.equalTo(14)
        }
        
        savedCountLabel.snp.makeConstraints {
            $0.top.equalTo(recipeChiefNameLabel.snp.bottom).offset(10)
            $0.leading.equalTo(savedIcon.snp.trailing).offset(4)
            $0.width.equalTo(24)
            $0.height.equalTo(14)
        }
    }
}
