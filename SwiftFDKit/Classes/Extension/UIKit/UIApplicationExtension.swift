//
//  UIApplicationExtension.swift
//  Pods-SwiftFD_Example
//
//  Created by Teng Wang 王腾 on 2019/4/25.
//

import UIKit

public extension UIApplication {
    
    public var emptyURL: URL {
        return URL.init(fileURLWithPath: "")
    }
    
    /// "Documents" folder in this app's sandbox.
    public var documentsURL: URL {
        return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first ?? emptyURL
    }
    
    /// "Documents" folder in this app's sandbox.
    public var documentsPath: String {
        return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
    }
    
    /// "Caches" folder in this app's sandbox.
    public var cachesURL: URL {
        return FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first ?? emptyURL
    }
    
    /// "Caches" folder in this app's sandbox.
    public var cachesPath: String {
        return NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first ?? ""
    }
    
    /// "Library" folder in this app's sandbox.
    public var libraryURL: URL {
        return FileManager.default.urls(for: .libraryDirectory, in: .userDomainMask).first ?? emptyURL
    }
    
    /// "Library" folder in this app's sandbox.
    public var libraryPath: String {
        return NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true).first ?? ""
    }
    
    /// Application's Bundle Name (show in SpringBoard).
    public var appBundleName: String? {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as? String
    }
    
    /// Application's Version.  e.g. "1.2.0"
    public var appVersion: String? {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
    }
    
    /// Application's Bundle ID.  e.g. "com.ibireme.MyApp"
    public var appBundleID: String? {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleIdentifier") as? String
    }
    
    /// Application's Build number. e.g. "123"
    public var appBuildVersion: String? {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as? String
    }
    
    public var appInfoDictionary: [String: Any]? {
        return Bundle.main.infoDictionary
    }
}

