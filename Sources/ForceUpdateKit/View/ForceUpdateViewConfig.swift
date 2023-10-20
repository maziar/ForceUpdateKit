//
//  File.swift
//  
//
//  Created by Maziar Saadatfar on 10/18/23.
//

import Foundation
import UIKit
public class ForceUpdateViewConfig {
    public init() {}
    public var style: ForceUpdateViewStyle = .fullscreen1
    public var updateButtonNortmalTitle: String = "Update New Version"
    public var updateButtonSelectedTitle: String = "Update New Version"
    public var updateButtonImage: UIImage = UIImage(named: "") ?? UIImage()
    public var contentViewBackColor: UIColor = .white
    public var popupViewBackColor: UIColor = .black
    public var popupViewCornerRadius: CGFloat = 15.0
    public var contentBackGroundImage = UIImage()
    public var updateImageType: ImageType = .spaceship1
    public var updateImage: UIImage?
    public var updateImageColor: UIColor?
    public var updateButtonFont = UIFont.systemFont(ofSize: 12, weight: .medium)
    public var headerTitleFont = UIFont.systemFont(ofSize: 13, weight: .bold)
    public var headerTitle = "It's time to update"
    public var headerTitleColor: UIColor = .black
    public var descriptionFont = UIFont.systemFont(ofSize: 12, weight: .medium)
    public var descriptionText = "It's time to update The version you are using is old, need to update the latest version in order to experience new features."
    public var descriptionTextColor: UIColor = .gray
    public var versionFont = UIFont.systemFont(ofSize: 10, weight: .bold)
    public var versionText = "Up to 12.349 version Apr 2024."
    public var versionTextColor: UIColor = .gray
    public var updateButtonBackColor: UIColor = .blue
    public var lineColor: UIColor = .lightGray
    public var updateButtonTitleColor: UIColor = .white
    public var updateButtonCornerRadius: CGFloat = 20.0
    public var updateButtonBorderWidth: CGFloat = 0.0
    public var updateButtonBorderColor: UIColor = .clear
}

public enum ImageType: String {
    case spaceship1 = "update-icon"
    case spaceship2 = "spaceship"
    case gear = "gear"
}
