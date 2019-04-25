//
//  UIScreenExtension.swift
//  Pods-SwiftFD_Example
//
//  Created by Teng Wang 王腾 on 2019/4/25.
//

import UIKit

public extension UIScreen {
    
    public static var width: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    public static var height: CGFloat {
        return UIScreen.main.bounds.height
    }
    
    /// 下方的安全区域位置 iPhoneXS、iPhoneXR、iPhoneX、iPhoneXS_MAX 为34 其余设备是0
    ///
    /// - Returns:
    public static func safeBottomInset() -> CGFloat {
        let device = FDDevice()
        if device == .iPhoneX || device == .iPhoneXR || device == .iPhoneXS ||  device == .iPhoneXSMAX {
            return 34.0
        } else {
            return 0
        }
    }
    
    /// 状态栏高度+导航栏高度
    ///
    /// - Returns: 状态栏+导航栏 总高度
    public static func statusBarNavigationBarHeight() -> CGFloat {
        return UIApplication.shared.statusBarFrame.height + 44
    }
    
    /// 状态栏高度
    ///
    /// - Returns: 状态栏高度
    static public func statusBarHeight() -> CGFloat {
        return UIApplication.shared.statusBarFrame.height
    }
    
    /// 导航栏高度
    ///
    /// - Returns: 导航栏高度
    static public func navigationBarHeight() -> CGFloat {
        return 44
    }
}

