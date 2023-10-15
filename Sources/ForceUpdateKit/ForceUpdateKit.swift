// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation
import UIKit
import Combine

public class ForceUpdateKit: Updatable {
    public let updateService: UpdateServiceProtocol!
    public init(updateService: UpdateServiceProtocol = UpdateService()) {
        self.updateService = updateService
    }
    
    public func configure(config: UpdateServiceConfig = UpdateServiceConfig()) async {
        Task {
            let request = UpdateRequest(appId: config.appId,
                                        version: config.version,
                                        route: config.route)
            let response = try await update(request: request)
            let viewModel = DefaultForceUpdateViewModel(response: response)
            let forceUpdateView = await ForceUpdateView(viewModel: viewModel)
            if response.forceUpdate {
                let window = await UIApplication.shared.windows.last!
                await window.addSubview(forceUpdateView)
                await forceUpdateView.fixInView(window)
                animate(view: forceUpdateView)
            }
        }
    }
    
    func animate(view: UIView) {
        UIView.animate(withDuration: 1.0, animations: {
            view.alpha = 1.0
        })
    }
}
