//
//  SegmentedButtonsView.swift
//  CooksCorner
//
//  Created by anjella on 15/3/24.
//

import UIKit

protocol SegmentedControlDelegate: AnyObject {
    func didIndexChanged(at index: Int)
}

class SegmentedButtonsView: UIView {
    
    lazy var selectorView = UIView()
    var labels = [UILabel]()
    private var titles: [String]!
    var textColor = UIColor.lightGray
    var selectorTextColor = UIColor.black
    var labelTextFont: UIFont = UIFont.systemFont(ofSize: 16)
    var selectorViewSize: CGSize = CGSize(width: 10, height: 2)
    var selectedIndex: Int = 0

    weak var segmentedControlDelegate: SegmentedControlDelegate?
    
    convenience init(frame: CGRect, titles: [String]) {
        self.init(frame: frame)
        self.titles = titles
        setupSegmentedControl()
        updateSelectedSegmentColors()
    }
    
    private func setupSegmentedControl() {
        for (index, title) in titles.enumerated() {
            let label = UILabel()
            label.text = title
            label.textColor = textColor
            label.textAlignment = .center
            label.isUserInteractionEnabled = true
            label.font = labelTextFont
            label.tag = index
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(labelTapped(_:)))
            label.addGestureRecognizer(tapGesture)
            addSubview(label)
            labels.append(label)
        }
        
        selectorView.backgroundColor = selectorTextColor
        addSubview(selectorView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let labelWidth = frame.width / CGFloat(labels.count)
        let labelHeight = frame.height
        for (index, label) in labels.enumerated() {
            label.frame = CGRect(x: CGFloat(index) * labelWidth, y: 0, width: labelWidth, height: labelHeight)
        }
        
        updateSelectorViewPosition()
    }
    
    private func updateSelectorViewPosition() {
        let labelWidth = frame.width / CGFloat(labels.count)
        let selectorY = frame.height - selectorViewSize.height
        let selectorX = CGFloat(selectedIndex) * labelWidth + (labelWidth - selectorViewSize.width) / 2
        selectorView.frame = CGRect(x: selectorX, y: selectorY, width: selectorViewSize.width, height: selectorViewSize.height)
    }

    @objc private func labelTapped(_ gesture: UITapGestureRecognizer) {
        guard let tappedLabel = gesture.view as? UILabel, let index = labels.firstIndex(of: tappedLabel) else { return }
        selectedIndex = index
        
        for (index, label) in labels.enumerated() {
            label.textColor = index == selectedIndex ? selectorTextColor : textColor
        }
        
        UIView.animate(withDuration: 0.3) {
            self.updateSelectorViewPosition()
        }
        
        segmentedControlDelegate?.didIndexChanged(at: index)
    }
    
    private func updateSelectedSegmentColors() {
        for (index, label) in labels.enumerated() {
            label.textColor = index == selectedIndex ? selectorTextColor : textColor
        }
    }
}
