// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation
import UIKit
public class ForceUpdateKit {
    public static func configure(window: UIWindow,
                                 config: UpdateServiceConfig = UpdateServiceConfig()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            let forceUpdateView = ForceUpdateView()
            if let view = window.rootViewController?.view {
                view.addSubview(forceUpdateView)
                forceUpdateView.fixInView(view)
            }
        }
    }
}
