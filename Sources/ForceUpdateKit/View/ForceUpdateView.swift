//
//  File.swift
//  
//
//  Created by Maziar Saadatfar on 9/29/23.
//

import Foundation
import UIKit

public class ForceUpdateView: UIView {
    var config: ForceUpdateViewConfig
    var viewModel: ForceUpdateViewModel
    
    lazy var updateButton: UIButton = {
        let updateButton = UIButton()
        updateButton.backgroundColor = config.updateButtonBackColor
        updateButton.titleLabel?.textColor = config.updateButtonTitleColor
        updateButton.setTitle(config.updateButtonNortmalTitle, for: .normal)
        updateButton.setTitle(config.updateButtonSelectedTitle, for: .selected)
        updateButton.setImage(config.updateButtonImage, for: .selected)
        updateButton.setCurvedView(cornerRadius: config.updateButtonCornerRadius,
                                   borderWidth: config.updateButtonBorderWidth,
                                   borderColor: config.updateButtonBorderColor)
        updateButton.addTarget(self, action: #selector(openLink), for: .touchUpInside)
        updateButton.titleLabel?.font = config.updateButtonFont
        updateButton.setTitleColor(config.updateButtonTitleColor, for: .normal)
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
        if let color = config.updateImageColor {
            let img = config.updateImage.imageWithColor(color: color)
            updateImageView.image = img
        } else {
            updateImageView.image = config.updateImage
        }
        return updateImageView
    }()
      
    lazy var headerTitle: UILabel = {
        let headerTitle = UILabel()
        headerTitle.font = config.headerTitleFont
        headerTitle.text = config.headerTitle
        headerTitle.textColor = config.headerTitleColor
        headerTitle.textAlignment = .center
        headerTitle.numberOfLines = 0
        return headerTitle
    }()
    
    lazy var descriptionLabel: UILabel = {
        let descriptionLabel = UILabel()
        descriptionLabel.font = config.descriptionFont
        descriptionLabel.text = config.descriptionText
        descriptionLabel.textColor = config.descriptionTextColor
        descriptionLabel.textAlignment = .center
        descriptionLabel.numberOfLines = 0
        return descriptionLabel
    }()
    
    lazy var versionLabel: UILabel = {
        let versionLabel = UILabel()
        versionLabel.font = config.versionFont
        versionLabel.text = config.versionText
        versionLabel.textColor = config.versionTextColor
        versionLabel.textAlignment = .center
        versionLabel.numberOfLines = 0
        return versionLabel
    }()
    
    lazy var line: UIView = {
        let line = UIView()
        line.backgroundColor = config.lineColor
        return line
    }()
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        contentView.setCurvedView(cornerRadius: 20)
    }
    
    public required init(viewModel: ForceUpdateViewModel,
                         config: ForceUpdateViewConfig = ForceUpdateViewConfig()) {
        self.config = config
        self.viewModel = viewModel
        if let title = viewModel.response.title { self.config.headerTitle = title }
        if let buttonTitle = viewModel.response.buttonTitle { self.config.updateButtonNortmalTitle = buttonTitle }
        if let version = viewModel.response.version { self.config.versionText = version }
        if let description = viewModel.response.description { self.config.descriptionText = description }
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
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
        commonInit()
        setupStyle()
    }
    
    func setupStyle() {
        let style = ForceUpdateViewStyle.make(
            style: config.style,
            headerTitle: headerTitle,
            updateImageView: updateImageView,
            contentView: contentView,
            updateButton: updateButton,
            descriptionLabel: descriptionLabel,
            versionLabel: versionLabel,
            line: line
        )
        style.setupViewStyle()
    }
    
    @objc
    func openLink() {
        viewModel.openLink()
    }
}
