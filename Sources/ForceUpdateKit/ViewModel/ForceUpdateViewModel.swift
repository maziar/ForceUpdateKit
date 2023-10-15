//
//  File.swift
//  
//
//  Created by Maziar Saadatfar on 9/29/23.
//

import Foundation
import UIKit

public protocol ForceUpdateViewModel {
    var response: UpdateResponse { get set }
    func openLink()
}

public final class DefaultForceUpdateViewModel: ForceUpdateViewModel {
    public var response: UpdateResponse
    public init(response: UpdateResponse) {
        self.response = response
    }
    public func openLink() {
        if let url = response.linkUrl, let urlFinal = URL(string: url) {
            UIApplication.shared.open(urlFinal)
        }
    }
}

