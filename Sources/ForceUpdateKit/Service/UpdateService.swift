//
//  UpdateServiceProtocol.swift
//
//
//  Created by Maziar Saadatfar on 10/12/23.
//

import Foundation

public class UpdateService: UpdateServiceProtocol {
    public init() {}
    public func update(request: UpdateRequest) async throws -> UpdateResponse {
        do {
            guard let url = URL(string: request.route) else {
                return UpdateResponse(forceUpdate: false)
            }
            var request = URLRequest(url: url)
            request.setValue(
                "application/json",
                forHTTPHeaderField: "Content-Type"
            )
            let (data, _) = try await URLSession.shared.data(for: request)
            if let updateResponse = try? JSONDecoder().decode(UpdateResponse.self, from: data) {
                print(updateResponse)
                return updateResponse
            } else {
                print("Invalid Response")
                return UpdateResponse(forceUpdate: false)
            }
        } catch {
            print("Failed to Send POST Request \(error)")
            return UpdateResponse(forceUpdate: false)
        }
    }
}
