//
//  CustomTextField.swift
//  CooksCorner
//
//  Created by anjella on 12/3/24.
//

import UIKit

class CustomTextField: UITextField {
    
    override init(frame: CGRect) {
          super.init(frame: frame)
        setUpUI()
      }

      required init?(coder aDecoder: NSCoder) {
          super.init(coder: aDecoder)
          setUpUI()
      }
    
       private func setUpUI() {
           layer.cornerRadius = 44 / 2
           autocorrectionType = .no
           autocapitalizationType = .none
           clearButtonMode = .whileEditing
           backgroundColor = UIColor(red: 247/255, green: 247/255, blue: 248/255, alpha: 1.0)
           textColor = .black
           font = UIFont(name: "Avenir Next Medium", size: 16)
           translatesAutoresizingMaskIntoConstraints = false
           
           let leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 10.0, height: 2.0))
           self.leftView = leftView
           leftViewMode = .always
           returnKeyType = .search
           rightViewMode = .always
    }
}
