//
//  UpdateRequest.swift
//
//
//  Created by Maziar Saadatfar on 10/12/23.
//

import Foundation
public struct UpdateRequest {
    public var appId: String = Bundle.main.bundleIdentifier ?? String()
    public var version: String = Bundle.main.releaseVersionNumber ?? String()
    public var route: String
    public var os: String = "iOs"
    public var language: String = "en"
    
    var dictionary: [String: Any] {
        return ["appId": appId,
                "version": version,
                "os": os,
                "lang": language]
    }
    
    var nsDictionary: NSDictionary {
        return dictionary as NSDictionary
    }
}
