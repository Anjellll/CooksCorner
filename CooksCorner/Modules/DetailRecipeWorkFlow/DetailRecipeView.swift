//
//  DetailRecipeView.swift
//  CooksCorner
//
//  Created by anjella on 15/3/24.
//

import UIKit
import SnapKit

class DetailRecipeView: UIView {
    
    private lazy var recipeImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "recipeImage")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    private lazy var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 20
        view.backgroundColor = .white
        return view
    }()

    private lazy var recipeNameLabel: UILabel = {
        var label = UILabel()
        label.font = UIFont(name: "Avenir Next Medium", size: 20)
        label.text = "Ainsley’s Jerk   Chicken"
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }()

    private lazy var timeIcon: UIImageView = {
        var image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "timeIcon")
        return image
    }()
    
    private lazy var cookingTimeLabel: UILabel = {
        var label = UILabel()
        label.font = UIFont(name: "Avenir Next Regular", size: 14)
        label.textColor = UIColor.orange
        label.text = "20-30 min"
        return label
    }()
    
    private lazy var difficultyLevelLabel: UILabel = {
        var label = UILabel()
        label.font = UIFont(name: "Avenir Next Regular", size: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.black
        label.backgroundColor = .systemGray6
        label.textAlignment = .center
        label.layer.cornerRadius = 22 / 2
        label.clipsToBounds = true
        label.text = "Easy"
        return label
    }()
    
    private lazy var recipeAuthorLabel: UILabel = {
        var label = UILabel()
        label.font = UIFont(name: "Avenir Next Regular", size: 12)
        label.textColor = UIColor.gray
        label.text = "by Kattoobekova"
        return label
    }()
    
    private lazy var likeIcon: UIImageView = {
        var image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "likeDetailIcon")
        return image
    }()
    
    private lazy var likeCountLabel: UILabel = {
        var label = UILabel()
        label.font = UIFont(name: "Avenir Next Regular", size: 12)
        label.textColor = UIColor.black
        label.text = "\(188) likes"
        return label
    }()
    
    private lazy var savedIcon: UIImageView = {
        var image = UIImageView()
        image.contentMode = .center
        image.image = UIImage(named: "savedDetailIcon")
        return image
    }()
    
    private lazy var recipeDescriptionTitle: UILabel = {
        var label = UILabel()
        label.font = UIFont(name: "Avenir Next Medium", size: 16)
        label.textColor = UIColor.black
        label.text = "Description"
        return label
    }()
    
    private lazy var recipeDescription: UILabel = {
        var label = UILabel()
        label.font = UIFont(name: "Avenir Next Regular", size: 14)
        label.textColor = UIColor.black
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.text = "You pick up your palette knife and then work that into. Give your meat a good old rub. That’s it, nice and hot, hot and spicy meat. He-he boy..."
        return label
    }()
    
    private lazy var ingredientsLabel: UILabel = {
        var label = UILabel()
        label.font = UIFont(name: "Avenir Next Medium", size: 16)
        label.textColor = UIColor.black
        label.text = "Ingredients"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setUp()
    }
    
    func updateView(recipe: RecipeModel) {
        recipeNameLabel.text = recipe.recipeName
        recipeAuthorLabel.text = recipe.chiefName
        likeCountLabel.text = "\(recipe.recipeLikeCount) likes"
        recipeImage.image = UIImage(named: recipe.recipeImage)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension DetailRecipeView {
    private func setUp() {
        setUpSubviews()
        setUpConstraints()
    }
    
    private func setUpSubviews() {
        addSubview(recipeImage)
        addSubview(contentView)
        contentView.addSubview(recipeNameLabel)
        contentView.addSubview(timeIcon)
        contentView.addSubview(cookingTimeLabel)
        contentView.addSubview(difficultyLevelLabel)
        contentView.addSubview(recipeAuthorLabel)
        contentView.addSubview(likeIcon)
        contentView.addSubview(likeCountLabel)
        contentView.addSubview(savedIcon)
        contentView.addSubview(recipeDescriptionTitle)
        contentView.addSubview(recipeDescription)
        contentView.addSubview(ingredientsLabel)
    }
    
    private func setUpConstraints() {
        recipeImage.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(247)
        }
        
        contentView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(280)
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(572)
            $0.bottom.equalToSuperview()
        }
        
        recipeNameLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(6)
            $0.leading.equalToSuperview().offset(20)
            $0.height.equalTo(60)
            $0.width.equalTo(180)
        }
        
        timeIcon.snp.makeConstraints {
            $0.top.equalTo(recipeNameLabel.snp.bottom).offset(12)
            $0.leading.equalToSuperview().offset(20)
            $0.height.width.equalTo(20)
        }
        
        cookingTimeLabel.snp.makeConstraints {
            $0.top.equalTo(recipeNameLabel.snp.bottom).offset(12)
            $0.leading.equalTo(timeIcon.snp.trailing).offset(8)
            $0.height.equalTo(20)
            $0.width.equalTo(100)
        }
        
        difficultyLevelLabel.snp.makeConstraints {
            $0.top.equalTo(cookingTimeLabel.snp.bottom).offset(8)
            $0.leading.equalToSuperview().offset(20)
            $0.height.equalTo(22)
            $0.width.equalTo(48)
        }
        
        recipeAuthorLabel.snp.makeConstraints {
            $0.top.equalTo(difficultyLevelLabel.snp.bottom).offset(16)
            $0.leading.equalToSuperview().offset(20)
            $0.height.equalTo(18)
            $0.width.equalTo(400)
        }
        
        likeIcon.snp.makeConstraints {
            $0.top.equalTo(recipeAuthorLabel.snp.bottom).offset(16)
            $0.leading.equalToSuperview().offset(20)
            $0.height.width.equalTo(24)
        }
        
        likeCountLabel.snp.makeConstraints {
            $0.top.equalTo(recipeAuthorLabel.snp.bottom).offset(16)
            $0.leading.equalTo(likeIcon.snp.trailing).offset(5)
            $0.height.equalTo(24)
            $0.width.equalTo(150)
        }
        
        savedIcon.snp.makeConstraints {
            $0.top.equalTo(recipeAuthorLabel.snp.bottom).offset(16)
            $0.trailing.equalToSuperview().offset(-20)
            $0.height.width.equalTo(24)
        }
        
        recipeDescriptionTitle.snp.makeConstraints {
            $0.top.equalTo(savedIcon.snp.bottom).offset(24)
            $0.leading.equalToSuperview().offset(20)
            $0.height.equalTo(24)
            $0.width.equalTo(92)
        }
        
        recipeDescription.snp.makeConstraints {
            $0.top.equalTo(recipeDescriptionTitle.snp.bottom).offset(8)
            $0.leading.equalToSuperview().offset(20)
            $0.height.equalTo(63)
            $0.width.equalTo(353)
        }
        
        ingredientsLabel.snp.makeConstraints {
            $0.top.equalTo(recipeDescription.snp.bottom).offset(20)
            $0.leading.equalToSuperview().offset(20)
            $0.height.equalTo(24)
            $0.width.equalTo(92)
        }
    }
}


