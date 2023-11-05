//
//  ForceUpdateViewStyle.swift
//
//
//  Created by Maziar Saadatfar on 10/12/23.
//

import Foundation
import UIKit

public enum ForceUpdateViewStyle {
    case fullscreen1
    case fullscreen2
    case fullscreen3
    case fullscreen4
    case popover1
    case popover2
    public static func make(viewModel: ForceUpdateViewModel,
                            config: ForceUpdateViewConfig) -> ForceUpdateViewProtocol {
        switch config.style {
        case .fullscreen1:
            return ForceUpdateView_FullScreen1(viewModel: viewModel,
                                               config: config)
        case .fullscreen2:
            return ForceUpdateView_FullScreen2(viewModel: viewModel,
                                               config: config)
        case .fullscreen3:
            return ForceUpdateView_FullScreen3(viewModel: viewModel,
                                               config: config)
        case .fullscreen4:
            return ForceUpdateView_FullScreen4(viewModel: viewModel,
                                               config: config)
        case .popover1:
            return ForceUpdateView_Popover1(viewModel: viewModel,
                                            config: config)
        case .popover2:
            return ForceUpdateView_Popover2(viewModel: viewModel,
                                            config: config)
        }
    }
    
    public static func getViewConfigWithStyle(style: ForceUpdateViewStyle) -> ForceUpdateViewConfig {
        switch style {
        case .fullscreen1:
            FullScreen1ForceUpdateViewConfig()
        case .fullscreen2:
            FullScreen2ForceUpdateViewConfig()
        case .fullscreen3:
            FullScreen3ForceUpdateViewConfig()
        case .fullscreen4:
            FullScreen4ForceUpdateViewConfig()
        case .popover1:
            Popover1ForceUpdateViewConfig()
        case .popover2:
            Popover2ForceUpdateViewConfig()
        }
    }
}
