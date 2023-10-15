//
//  Updatable.swift
//
//
//  Created by Maziar Saadatfar on 10/11/23.
//

import Foundation

public protocol Updatable: AnyObject {
    var updateService: UpdateServiceProtocol! { get }
    func update(request: UpdateRequest) async throws -> UpdateResponse
}

extension Updatable {
    public func update(request: UpdateRequest) async throws -> UpdateResponse {
        return try await updateService.update(request: request)
    }
}
