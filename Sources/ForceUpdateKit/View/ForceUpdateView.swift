//
//  File.swift
//  
//
//  Created by Maziar Saadatfar on 9/29/23.
//

import Foundation
import UIKit

public struct ForceUpdateConfig {
    public var updateButtonFrame: CGRect = CGRect(x: 265, y: 5, width: 30, height: 30)
    public var headerTitleFrame: CGRect = CGRect(x: 0, y: 0, width: 300, height: 40)
    public var updateButtonNortmalTitle: String = "Update"
    public var updateButtonSelectedTitle: String = "Update"
    public var updateButtonImage: UIImage = UIImage(named: "") ?? UIImage()
    public var contentViewFrame: CGRect = CGRect(x: 0, y: 40, width: 300, height: 260)
    public var contentViewBackColor: UIColor = .white
    public var contentBackGroundImage: UIImage = UIImage(named: "") ?? UIImage()
    public var updateImage: UIImage = UIImage(named: "update-icon") ?? UIImage()
    public var headerTitleFont = UIFont.systemFont(ofSize: 22, weight: .medium)
    public var headerTitle = "Force Update Required"
    public var updateButtonBackColor: UIColor = .blue
    public var updateButtonTitleColor: UIColor = .white
    public var updateButtonCornerRadius: CGFloat = 8.0
    public var updateButtonBorderWidth: CGFloat = 0.0
    public var updateButtonBorderColor: UIColor = .clear
    public var style: ForceUpdateViewStyle = .fullscreen1
}

public class ForceUpdateView: UIView {
    var config: ForceUpdateConfig
    var viewModel: ForceUpdateViewModel
    
    lazy var updateButton: UIButton = {
        let updateButton = UIButton()
        updateButton.frame = config.updateButtonFrame
        updateButton.backgroundColor = config.updateButtonBackColor
        updateButton.titleLabel?.textColor = config.updateButtonTitleColor
        updateButton.setTitle(config.updateButtonNortmalTitle, for: .normal)
        updateButton.setTitle(config.updateButtonSelectedTitle, for: .selected)
        updateButton.setImage(config.updateButtonImage, for: .selected)
        updateButton.setCurvedView(cornerRadius: config.updateButtonCornerRadius,
                                   borderWidth: config.updateButtonBorderWidth,
                                   borderColor: config.updateButtonBorderColor)
        updateButton.addTarget(self, action: #selector(update), for: .touchUpInside)
        return updateButton
    }()
    
    lazy var contentView: UIView = {
        let contentView = UIView()
        contentView.backgroundColor = config.contentViewBackColor
        return contentView
    }()
    
    lazy var contentBackGroundImageView: UIImageView = {
        let contentBackGroundImageView = UIImageView()
        contentBackGroundImageView.image = config.contentBackGroundImage
        return contentBackGroundImageView
    }() 
    
    lazy var updateImageView: UIImageView = {
        let updateImageView = UIImageView()
        updateImageView.image = config.updateImage
        return updateImageView
    }()
      
    lazy var headerTitle: UILabel = {
        let headerTitle = UILabel(frame: config.headerTitleFrame)
        headerTitle.font = config.headerTitleFont
        headerTitle.text = config.headerTitle
        headerTitle.textAlignment = .center
        return headerTitle
    }()
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        contentView.setCurvedView(cornerRadius: 20)
    }
    
    public required init(viewModel: ForceUpdateViewModel,
                         config: ForceUpdateConfig) {
        self.config = config
        self.viewModel = viewModel
        super.init(frame: config.contentViewFrame)
        setup()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func commonInit() {
        contentView.fixInView(self)
    }
    
    public func setup() {
        addSubview(contentView)
        contentView.fixInView(self)
        contentView.addSubview(contentBackGroundImageView)
        contentBackGroundImageView.fixInView(contentView)
        contentView.addSubview(headerTitle)
        contentView.addSubview(updateImageView)
        contentView.addSubview(updateButton)
        commonInit()
        setUpdateImageViewConstraint()
        setTitleViewConstraint()
    }
    
    @objc
    func update() {
        viewModel.update()
    }
}