// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation
import UIKit
public class ForceUpdateKit {
    public static func configure(config: UpdateServiceConfig = UpdateServiceConfig()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            let forceUpdateView = ForceUpdateView()
            let window = UIApplication.shared.windows.last!
            window.addSubview(forceUpdateView)
            forceUpdateView.fixInView(window)
            window.makeKeyAndVisible()
        }
    }
}
