//
//  ForceUpdateViewProtocol.swift
//
//
//  Created by Maziar Saadatfar on 10/16/23.
//

import Foundation
import UIKit
public protocol ForceUpdateViewProtocol {
    var headerTitle: UILabel { get set }
    var updateImageView: UIImageView { get set }
    var contentView: UIView { get set }
    var updateButton: UIButton { get set }
    var descriptionLabel: UILabel { get set }
    var versionLabel: UILabel { get set }
    var line: UIView { get set }
    func setupViewStyle()
}
