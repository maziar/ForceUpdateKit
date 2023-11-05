//
//  UpdateServiceConfig.swift
//
//
//  Created by Maziar Saadatfar on 10/12/23.
//

import Foundation
public struct UpdateServiceConfig {
    public init(style: ForceUpdateViewStyle = .fullscreen1) {
        self.viewConfig = ForceUpdateViewStyle.getViewConfigWithStyle(style: style)
    }
    public var route: String = "https://my.api.mockaroo.com/forceupdate.json?key=2202ab40"
    public var appId: String = Bundle.main.bundleIdentifier ?? String()
    public var version: String = Bundle.main.releaseVersionNumber ?? String()
    public var viewConfig: ForceUpdateViewConfig
    public var language: String = "en"
}
