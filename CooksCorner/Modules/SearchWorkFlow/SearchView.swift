//
//  SearchView.swift
//  CooksCorner
//
//  Created by anjella on 14/3/24.
//

import UIKit
import SnapKit

class SearchView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SearchView {
    private func setUp() {
        setUpSubviews()
        setUpConstraints()
    }
    
    private func setUpSubviews() {
        
    }
    
    private func setUpConstraints() {
        
    }
}

