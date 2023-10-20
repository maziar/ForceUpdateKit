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
            let response = try await self.update(request: request)
            let viewModel = DefaultForceUpdateViewModel(response: response)
//            if response.forceUpdate {
            DispatchQueue.main.async {
                let forceUpdateView = ForceUpdateViewStyle.make(viewModel: viewModel,
                                                                config: config.viewConfig)
                let window = UIApplication.shared.windows.last!
                forceUpdateView.center.y += forceUpdateView.frame.height
                window.addSubview(forceUpdateView)
                forceUpdateView.fixInView(window)
                UIView.animate(withDuration: 1.0) {
                    forceUpdateView.center.y -= forceUpdateView.frame.height
                }
            }
//            }
        }
    }
}
