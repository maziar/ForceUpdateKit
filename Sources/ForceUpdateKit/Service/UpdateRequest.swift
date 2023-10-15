//
//  UpdateRequest.swift
//
//
//  Created by Maziar Saadatfar on 10/12/23.
//

import Foundation
public struct UpdateRequest {
    public var appId: String
    public var version: String
    
    var dictionary: [String: Any] {
        return ["appId": appId,
                "version": version]
    }
    
    var nsDictionary: NSDictionary {
        return dictionary as NSDictionary
    }
}
