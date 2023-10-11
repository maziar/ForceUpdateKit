//
//  File.swift
//  
//
//  Created by Maziar Saadatfar on 10/12/23.
//

import Foundation
import UIKit

public extension ForceUpdateView {
    func setUpdateImageViewConstraint() {
        updateImageView.translatesAutoresizingMaskIntoConstraints = false
           let horizontalConstraint = NSLayoutConstraint(
            item: updateImageView,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: contentView,
            attribute: .centerX,
            multiplier: 1,
            constant: 0)
           let verticalConstraint = NSLayoutConstraint(
            item: updateImageView,
            attribute: .centerY,
            relatedBy: .equal,
            toItem: contentView,
            attribute: .centerY,
            multiplier: -150,
            constant: 0)
           let widthConstraint = NSLayoutConstraint(
            item: updateImageView,
            attribute: .width,
            relatedBy: .equal,
            toItem: nil,
            attribute: NSLayoutConstraint.Attribute.notAnAttribute,
            multiplier: 1,
            constant: 191)
           let heightConstraint = NSLayoutConstraint(
            item: updateImageView,
            attribute: .height,
            relatedBy: .equal,
            toItem: nil,
            attribute: .notAnAttribute,
            multiplier: 1,
            constant: 139)
        contentView.addConstraints([horizontalConstraint, verticalConstraint, widthConstraint, heightConstraint])
    } 
    
    func setTitleViewConstraint() {
        headerTitle.translatesAutoresizingMaskIntoConstraints = false
           let horizontalConstraint = NSLayoutConstraint(
            item: headerTitle,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: contentView,
            attribute: .centerX,
            multiplier: 1,
            constant: 0)
           let verticalConstraint = NSLayoutConstraint(
            item: headerTitle,
            attribute: .top,
            relatedBy: .equal,
            toItem: updateImageView,
            attribute: .top,
            multiplier: 56,
            constant: 0)
        
        headerTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24).isActive = true
           let heightConstraint = NSLayoutConstraint(
            item: headerTitle,
            attribute: .height,
            relatedBy: .greaterThanOrEqual,
            toItem: nil,
            attribute: .notAnAttribute,
            multiplier: 1,
            constant: 50)
        contentView.addConstraints([horizontalConstraint, verticalConstraint, heightConstraint])
    }
}
