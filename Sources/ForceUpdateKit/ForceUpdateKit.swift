// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation
import UIKit
public class ForceUpdateKit {
    public static func configure(scene: UIWindowScene, config: UpdateServiceConfig = UpdateServiceConfig()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            let forceUpdateView = ForceUpdateView()
            let window = UIWindow(windowScene: scene)
            window.addSubview(forceUpdateView)
            forceUpdateView.fixInView(window)
        }
    }
}
