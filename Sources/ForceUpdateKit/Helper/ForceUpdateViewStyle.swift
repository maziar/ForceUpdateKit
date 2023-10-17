//
//  ForceUpdateViewStyle.swift
//
//
//  Created by Maziar Saadatfar on 10/12/23.
//

import Foundation
import UIKit

public enum ForceUpdateViewStyle {
    case fullscreen1
    case fullscreen2
    case fullscreen3
    case fullscreen4
    case popover1
    case popover2
    case popover3
    case popover4
    public static func make(style: ForceUpdateViewStyle,
                            headerTitle: UILabel,
                            updateImageView: UIImageView,
                            contentView: UIView,
                            updateButton: UIButton,
                            descriptionLabel: UILabel,
                            versionLabel: UILabel,
                            line: UIView) -> ForceUpdateViewProtocol {
        switch style {
        case .fullscreen1:
            return FullScreenStyle1(headerTitle: headerTitle,
                                    updateImageView: updateImageView,
                                    contentView: contentView,
                                    updateButton: updateButton,
                                    descriptionLabel: descriptionLabel,
                                    versionLabel: versionLabel,
                                    line: line
            )
        case .fullscreen2:
            return FullScreenStyle2(headerTitle: headerTitle,
                                    updateImageView: updateImageView,
                                    contentView: contentView,
                                    updateButton: updateButton,
                                    descriptionLabel: descriptionLabel,
                                    versionLabel: versionLabel,
                                    line: line)
        case .fullscreen3:
            return FullScreenStyle3(headerTitle: headerTitle,
                                    updateImageView: updateImageView,
                                    contentView: contentView,
                                    updateButton: updateButton,
                                    descriptionLabel: descriptionLabel,
                                    versionLabel: versionLabel,
                                    line: line)
        case .fullscreen4:
            return FullScreenStyle4(headerTitle: headerTitle,
                                    updateImageView: updateImageView,
                                    contentView: contentView,
                                    updateButton: updateButton,
                                    descriptionLabel: descriptionLabel,
                                    versionLabel: versionLabel,
                                    line: line)
        case .popover1:
            return PopoverStyle1(headerTitle: headerTitle,
                                 updateImageView: updateImageView,
                                 contentView: contentView,
                                 updateButton: updateButton,
                                 descriptionLabel: descriptionLabel,
                                 versionLabel: versionLabel,
                                 line: line)
        case .popover2:
            return PopoverStyle2(headerTitle: headerTitle,
                                 updateImageView: updateImageView,
                                 contentView: contentView,
                                 updateButton: updateButton,
                                 descriptionLabel: descriptionLabel,
                                 versionLabel: versionLabel,
                                 line: line)
        case .popover3:
            return PopoverStyle3(headerTitle: headerTitle,
                                 updateImageView: updateImageView,
                                 contentView: contentView,
                                 updateButton: updateButton,
                                 descriptionLabel: descriptionLabel,
                                 versionLabel: versionLabel,
                                 line: line)
        case .popover4:
            return PopoverStyle4(headerTitle: headerTitle,
                                 updateImageView: updateImageView,
                                 contentView: contentView,
                                 updateButton: updateButton,
                                 descriptionLabel: descriptionLabel,
                                 versionLabel: versionLabel,
                                 line: line)
        }
    }
}
