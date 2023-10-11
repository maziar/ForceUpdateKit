//
//  File.swift
//  
//
//  Created by Maziar Saadatfar on 9/29/23.
//

import Foundation
import UIKit

public extension NSObject {
    @objc static
    var nameOfClass: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}

public extension UITableViewCell {
    @objc
    static func reuseIdentifier() -> String {
        return self.nameOfClass
    }
}

public extension UICollectionViewCell {
    @objc
    static func reuseIdentifier() -> String {
        return self.nameOfClass
    }
}

public extension UIView {
    func setCurvedView(cornerRadius: CGFloat,
                       borderWidth: CGFloat , 
                       borderColor: UIColor,
                       masksToBounds: Bool = true) {
        self.layer.cornerRadius = cornerRadius
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
        self.layer.masksToBounds = masksToBounds
    }
    
    func setCurvedView(cornerRadius: CGFloat , masksToBounds: Bool = true) {
        self.layer.cornerRadius = cornerRadius
        self.layer.borderColor = UIColor.clear.cgColor
        self.layer.borderWidth = 0
        self.layer.masksToBounds = masksToBounds
    }
    
    func roundCorners(corners: CACornerMask, radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.layer.maskedCorners = corners
    }
    
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
    
    func addShadow(color: UIColor, radius: CGFloat? = nil, opacity: Float? = nil, offsetY: CGFloat? = nil) {
        self.layer.shadowColor = color.cgColor
        if let radius = radius {
            self.layer.shadowRadius = radius
        }
        if let opacity = opacity {
            self.layer.shadowOpacity = opacity
        }
        if let offsetY = offsetY {
            self.layer.shadowOffset.height = offsetY
        }
    }
    
    func fixInView(_ container: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.frame = container.frame
        container.addSubview(self)
        NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal,
                           toItem: container, attribute: .leading,
                           multiplier: 1.0, constant: .zero).isActive = true
        NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal,
                           toItem: container, attribute: .trailing,
                           multiplier: 1.0, constant: .zero).isActive = true
        NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal,
                           toItem: container, attribute: .top,
                           multiplier: 1.0, constant: .zero).isActive = true
        NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal,
                           toItem: container, attribute: .bottom,
                           multiplier: 1.0, constant: .zero).isActive = true
    }
}
