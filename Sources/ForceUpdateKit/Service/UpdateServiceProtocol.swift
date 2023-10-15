//
//  UpdateServiceProtocol.swift
//  
//
//  Created by Maziar Saadatfar on 10/12/23.
//

import Foundation

public protocol UpdateServiceProtocol {
    func update(request: UpdateRequest) async throws -> UpdateResponse
}
