//
//  File.swift
//
//
//  Created by Maziar Saadatfar on 10/16/23.
//

import Foundation
import UIKit

public struct FullScreenStyle2: ForceUpdateViewProtocol {
    public var descriptionLabel: UILabel
    public var versionLabel: UILabel
    public var line: UIView
    public var headerTitle: UILabel
    public var updateImageView: UIImageView
    public var contentView: UIView
    public var updateButton: UIButton
    
    public init(headerTitle: UILabel,
                updateImageView: UIImageView,
                contentView: UIView,
                updateButton: UIButton,
                descriptionLabel: UILabel,
                versionLabel: UILabel,
                line: UIView
    ) {
        self.headerTitle = headerTitle
        self.updateImageView = updateImageView
        self.contentView = contentView
        self.updateButton = updateButton
        self.descriptionLabel = descriptionLabel
        self.versionLabel = versionLabel
        self.line = line
    }
    
    public func setupViewStyle() {
        contentView.addSubview(updateImageView)
        contentView.addSubview(headerTitle)
        contentView.addSubview(descriptionLabel)
        contentView.addSubview(line)
        contentView.addSubview(updateButton)
        contentView.addSubview(versionLabel)
        setUpdateImageViewConstraint()
        setTitleViewConstraint()
        setDescriptionConstraint()
        setLineConstraint()
        setButtonConstraint()
        setVersionConstraint()
    }
    
    public func setUpdateImageViewConstraint() {
        updateImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(
            item: updateImageView,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: contentView,
            attribute: .centerX,
            multiplier: 1,
            constant: 0).isActive = true
        NSLayoutConstraint(
            item: updateImageView,
            attribute: .centerY,
            relatedBy: .equal,
            toItem: contentView,
            attribute: .centerY,
            multiplier: 1,
            constant: -150).isActive = true
        NSLayoutConstraint(
            item: updateImageView,
            attribute: .width,
            relatedBy: .equal,
            toItem: nil,
            attribute: NSLayoutConstraint.Attribute.notAnAttribute,
            multiplier: 1,
            constant: 191).isActive = true
        NSLayoutConstraint(
            item: updateImageView,
            attribute: .height,
            relatedBy: .equal,
            toItem: nil,
            attribute: .notAnAttribute,
            multiplier: 1,
            constant: 139).isActive = true
    }
    
    public func setTitleViewConstraint() {
        headerTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(
            item: headerTitle,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: contentView,
            attribute: .centerX,
            multiplier: 1,
            constant: 0).isActive = true
        NSLayoutConstraint(
            item: headerTitle,
            attribute: .top,
            relatedBy: .equal,
            toItem: updateImageView,
            attribute: .bottom,
            multiplier: 1,
            constant: 31).isActive = true
        
        headerTitle.leadingAnchor.constraint(
            equalTo: contentView.leadingAnchor,
            constant: 24).isActive = true
        
        NSLayoutConstraint(
            item: headerTitle,
            attribute: .height,
            relatedBy: .greaterThanOrEqual,
            toItem: nil,
            attribute: .notAnAttribute,
            multiplier: 1,
            constant: 30).isActive = true
    }
    
    public func setDescriptionConstraint() {
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(
            item: descriptionLabel,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: contentView,
            attribute: .centerX,
            multiplier: 1,
            constant: 0).isActive = true
        NSLayoutConstraint(
            item: descriptionLabel,
            attribute: .top,
            relatedBy: .equal,
            toItem: headerTitle,
            attribute: .bottom,
            multiplier: 1,
            constant: 16).isActive = true
        
        descriptionLabel.leadingAnchor.constraint(
            equalTo: contentView.leadingAnchor,
            constant: 24).isActive = true
        
        NSLayoutConstraint(
            item: descriptionLabel,
            attribute: .height,
            relatedBy: .greaterThanOrEqual,
            toItem: nil,
            attribute: .notAnAttribute,
            multiplier: 1,
            constant: 50).isActive = true
    }
    
    public func setLineConstraint() {
        line.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(
            item: line,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: contentView,
            attribute: .centerX,
            multiplier: 1,
            constant: 0).isActive = true
        NSLayoutConstraint(
            item: line,
            attribute: .bottom,
            relatedBy: .equal,
            toItem: updateButton,
            attribute: .top,
            multiplier: 1,
            constant: -10).isActive = true
        line.leadingAnchor.constraint(
            equalTo: contentView.leadingAnchor,
            constant: 24).isActive = true
        NSLayoutConstraint(
            item: line,
            attribute: .height,
            relatedBy: .equal,
            toItem: nil,
            attribute: .notAnAttribute,
            multiplier: 1,
            constant: 1).isActive = true
    }
    
    public func setButtonConstraint() {
        updateButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(
            item: updateButton,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: contentView,
            attribute: .centerX,
            multiplier: 1,
            constant: 0).isActive = true
        NSLayoutConstraint(
            item: updateButton,
            attribute: .bottom,
            relatedBy: .equal,
            toItem: versionLabel,
            attribute: .top,
            multiplier: 1,
            constant: -10).isActive = true
        NSLayoutConstraint(
            item: updateButton,
            attribute: .width,
            relatedBy: .equal,
            toItem: nil,
            attribute: NSLayoutConstraint.Attribute.notAnAttribute,
            multiplier: 1,
            constant: 222).isActive = true
        NSLayoutConstraint(
            item: updateButton,
            attribute: .height,
            relatedBy: .equal,
            toItem: nil,
            attribute: .notAnAttribute,
            multiplier: 1,
            constant: 56).isActive = true
    }
    
    public func setVersionConstraint() {
        versionLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(
            item: versionLabel,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: contentView,
            attribute: .centerX,
            multiplier: 1,
            constant: 0).isActive = true
        NSLayoutConstraint(
            item: versionLabel,
            attribute: .bottom,
            relatedBy: .equal,
            toItem: contentView,
            attribute: .bottom,
            multiplier: 1,
            constant: -52).isActive = true
        versionLabel.leadingAnchor.constraint(
            equalTo: contentView.leadingAnchor,
            constant: 24).isActive = true
        NSLayoutConstraint(
            item: versionLabel,
            attribute: .height,
            relatedBy: .equal,
            toItem: nil,
            attribute: .notAnAttribute,
            multiplier: 1,
            constant: 20).isActive = true
    }
}
