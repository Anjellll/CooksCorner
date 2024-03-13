//
//  ReuseIdentifying.swift
//  CooksCorner
//
//  Created by anjella on 13/3/24.
//

import Foundation

protocol ReuseIdentifying {
    static var reuseIdentifier: String { get }
}

extension ReuseIdentifying {
    static var reuseIdentifier: String {
        return String(describing: Self.self)
    }
}

