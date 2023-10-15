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
        do {
            let request = UpdateRequest(appId: "", version: "")
            let response = try await update(request: request)
            let forceUpdateView = await ForceUpdateView(viewModel: DefaultForceUpdateViewModel(response: response))
            let window = await UIApplication.shared.windows.last!
            await window.addSubview(forceUpdateView)
            await forceUpdateView.fixInView(window)
        } catch {
            print("Oops!")
        }
    }
}
