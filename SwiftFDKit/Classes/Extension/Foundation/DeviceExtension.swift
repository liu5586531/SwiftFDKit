//
//  FDDeviceExtension.swift
//  FDFoundation
//
//  Created by Yongpeng Zhu 朱永鹏 on 2018/5/4.
//  Copyright © 2018年 Yongpeng Zhu 朱永鹏. All rights reserved.
//



// MARK: - FDDevice

/// This enum is a value-type wrapper and extension of
/// [`UIFDDevice`](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIFDDevice_Class/).
///
/// Usage:
///
///     let FDDevice = FDDevice()
///
///     print(FDDevice)     // prints, for example, "iPhone 6 Plus"
///
///     if FDDevice == .iPhone6Plus {
///         // Do something
///     } else {
///         // Do something else
///     }
///
///     ...
///
///     if FDDevice.batteryState == .full || FDDevice.batteryState >= .charging(75) {
///         print("Your battery is happy! 😊")
///     }
///
///     ...
///
///     if FDDevice.batteryLevel >= 50 {
///         install_iOS()
///     } else {
///         showError()
///     }
///
public enum FDDevice {
    #if os(iOS)
    /// FDDevice is an [iPod Touch (5th generation)](https://support.apple.com/kb/SP657)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP657/sp657_ipod-touch_size.jpg)
    case iPodTouch5
    /// FDDevice is an [iPod Touch (6th generation)](https://support.apple.com/kb/SP720)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP720/SP720-ipod-touch-specs-color-sg-2015.jpg)
    case iPodTouch6
    /// FDDevice is an [iPhone 4](https://support.apple.com/kb/SP587)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP643/sp643_iphone4s_color_black.jpg)
    case iPhone4
    /// FDDevice is an [iPhone 4s](https://support.apple.com/kb/SP643)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/iphone/iphone5s/iphone_4s.png)
    case iPhone4s
    /// FDDevice is an [iPhone 5](https://support.apple.com/kb/SP655)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP655/sp655_iphone5_color.jpg)
    case iPhone5
    /// FDDevice is an [iPhone 5c](https://support.apple.com/kb/SP684)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP684/SP684-color_yellow.jpg)
    case iPhone5c
    /// FDDevice is an [iPhone 5s](https://support.apple.com/kb/SP685)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP685/SP685-color_black.jpg)
    case iPhone5s
    /// FDDevice is an [iPhone 6](https://support.apple.com/kb/SP705)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP705/SP705-iphone_6-mul.png)
    case iPhone6
    /// FDDevice is an [iPhone 6 Plus](https://support.apple.com/kb/SP706)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP706/SP706-iphone_6_plus-mul.png)
    case iPhone6Plus
    /// FDDevice is an [iPhone 6s](https://support.apple.com/kb/SP726)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP726/SP726-iphone6s-gray-select-2015.png)
    case iPhone6s
    /// FDDevice is an [iPhone 6s Plus](https://support.apple.com/kb/SP727)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP727/SP727-iphone6s-plus-gray-select-2015.png)
    case iPhone6sPlus
    /// FDDevice is an [iPhone 7](https://support.apple.com/kb/SP743)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP743/iphone7-black.png)
    case iPhone7
    /// FDDevice is an [iPhone 7 Plus](https://support.apple.com/kb/SP744)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP744/iphone7-plus-black.png)
    case iPhone7Plus
    /// FDDevice is an [iPhone SE](https://support.apple.com/kb/SP738)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP738/SP738.png)
    case iPhoneSE
    /// FDDevice is an [iPhone 8](https://support.apple.com/kb/SP767)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP767/iphone8.png)
    case iPhone8
    /// FDDevice is an [iPhone 8 Plus](https://support.apple.com/kb/SP768)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP768/iphone8plus.png)
    case iPhone8Plus
    /// FDDevice is an [iPhone X](https://support.apple.com/kb/SP770)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP770/iphonex.png)
    case iPhoneX
    /// FDDevice is an [iPad 2](https://support.apple.com/kb/SP622)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP622/SP622_01-ipad2-mul.png)
    case iPhoneXR
    /// FDDevice is an [iPad 2](https://support.apple.com/kb/SP622)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP622/SP622_01-ipad2-mul.png)
    case iPhoneXS
    /// FDDevice is an [iPad 2](https://support.apple.com/kb/SP622)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP622/SP622_01-ipad2-mul.png)
    case iPhoneXSMAX
    /// FDDevice is an [iPad 2](https://support.apple.com/kb/SP622)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP622/SP622_01-ipad2-mul.png)
    case iPad2
    /// FDDevice is an [iPad (3rd generation)](https://support.apple.com/kb/SP647)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP662/sp662_ipad-4th-gen_color.jpg)
    case iPad3
    /// FDDevice is an [iPad (4th generation)](https://support.apple.com/kb/SP662)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP662/sp662_ipad-4th-gen_color.jpg)
    case iPad4
    /// FDDevice is an [iPad Air](https://support.apple.com/kb/SP692)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP692/SP692-specs_color-mul.png)
    case iPadAir
    /// FDDevice is an [iPad Air 2](https://support.apple.com/kb/SP708)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP708/SP708-space_gray.jpeg)
    case iPadAir2
    /// FDDevice is an [iPad 5](https://support.apple.com/kb/SP751)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP751/ipad_5th_generation.png)
    case iPad5
    /// FDDevice is an [iPad 6](https://support.apple.com/kb/NotYetAvailable)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP751/ipad_5th_generation.png)
    case iPad6
    /// FDDevice is an [iPad Mini](https://support.apple.com/kb/SP661)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP661/sp661_ipad_mini_color.jpg)
    case iPadMini
    /// FDDevice is an [iPad Mini 2](https://support.apple.com/kb/SP693)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP693/SP693-specs_color-mul.png)
    case iPadMini2
    /// FDDevice is an [iPad Mini 3](https://support.apple.com/kb/SP709)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP709/SP709-space_gray.jpeg)
    case iPadMini3
    /// FDDevice is an [iPad Mini 4](https://support.apple.com/kb/SP725)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP725/SP725ipad-mini-4.png)
    case iPadMini4
    /// FDDevice is an [iPad Pro](https://support.apple.com/kb/SP739)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP739/SP739.png)
    case iPadPro9Inch
    /// FDDevice is an [iPad Pro](https://support.apple.com/kb/sp723)
    ///
    /// ![Image](http://images.apple.com/v/ipad-pro/c/images/shared/buystrip/ipad_pro_large_2x.png)
    case iPadPro12Inch
    /// FDDevice is an [iPad Pro](https://support.apple.com/kb/SP761)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP761/ipad-pro-12in-hero-201706.png)
    case iPadPro12Inch2
    /// FDDevice is an [iPad Pro 10.5](https://support.apple.com/kb/SP762)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP761/ipad-pro-10in-hero-201706.png)
    case iPadPro10Inch
    /// FDDevice is a [HomePod](https://www.apple.com/homepod/)
    ///
    /// ![Image](https://images.apple.com/v/homepod/d/images/overview/homepod_side_dark_large_2x.jpg)
    case homePod
    #elseif os(tvOS)
    /// FDDevice is an [Apple TV 4](https://support.apple.com/kb/SP724)
    ///
    /// ![Image](http://images.apple.com/v/tv/c/images/overview/buy_tv_large_2x.jpg)
    case appleTV4
    /// FDDevice is an [Apple TV 4K](https://support.apple.com/kb/SP769)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP769/appletv4k.png)
    case appleTV4K
    #endif
    
    /// FDDevice is [Simulator](https://developer.apple.com/library/ios/documentation/IDEs/Conceptual/iOS_Simulator_Guide/Introduction/Introduction.html)
    ///
    /// ![Image](https://developer.apple.com/assets/elements/icons/256x256/xcode-6.png)
    indirect case simulator(FDDevice)
    
    /// FDDevice is not yet known (implemented)
    /// You can still use this enum as before but the description equals the identifier (you can get multiple identifiers for the same product class
    /// (e.g. "iPhone6,1" or "iPhone 6,2" do both mean "iPhone 5s"))
    case unknown(String)
    
    /// Initializes a `FDDevice` representing the current FDDevice this software runs on.
    public init() {
        self = FDDevice.mapToFDDevice(identifier: FDDevice.identifier)
    }
    
    /// Gets the identifier from the system, such as "iPhone7,1".
    public static var identifier: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let mirror = Mirror(reflecting: systemInfo.machine)
        
        let identifier = mirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        return identifier
    }
    
    /// Maps an identifier to a FDDevice. If the identifier can not be mapped to an existing FDDevice, `UnknownFDDevice(identifier)` is returned.
    ///
    /// - parameter identifier: The FDDevice identifier, e.g. "iPhone7,1". Can be obtained from `FDDevice.identifier`.
    ///
    /// - returns: An initialized `FDDevice`.
    public static func mapToFDDevice(identifier: String) -> FDDevice { // swiftlint:disable:this cyclomatic_complexity
        #if os(iOS)
        switch identifier {
        case "iPod5,1": return iPodTouch5
        case "iPod7,1": return iPodTouch6
        case "iPhone3,1", "iPhone3,2", "iPhone3,3": return iPhone4
        case "iPhone4,1": return iPhone4s
        case "iPhone5,1", "iPhone5,2": return iPhone5
        case "iPhone5,3", "iPhone5,4": return iPhone5c
        case "iPhone6,1", "iPhone6,2": return iPhone5s
        case "iPhone7,2": return iPhone6
        case "iPhone7,1": return iPhone6Plus
        case "iPhone8,1": return iPhone6s
        case "iPhone8,2": return iPhone6sPlus
        case "iPhone9,1", "iPhone9,3": return iPhone7
        case "iPhone9,2", "iPhone9,4": return iPhone7Plus
        case "iPhone8,4": return iPhoneSE
        case "iPhone10,1", "iPhone10,4": return iPhone8
        case "iPhone10,2", "iPhone10,5": return iPhone8Plus
        case "iPhone10,3", "iPhone10,6": return iPhoneX
        
        case "iPhone11,8": return iPhoneXR
        case "iPhone11,2": return iPhoneXS
        case "iPhone11,4", "iPhone11,6": return iPhoneXSMAX
            
        case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4": return iPad2
        case "iPad3,1", "iPad3,2", "iPad3,3": return iPad3
        case "iPad3,4", "iPad3,5", "iPad3,6": return iPad4
        case "iPad4,1", "iPad4,2", "iPad4,3": return iPadAir
        case "iPad5,3", "iPad5,4": return iPadAir2
        case "iPad6,11", "iPad6,12": return iPad5
        case "iPad7,5", "iPad7,6": return iPad6
        case "iPad2,5", "iPad2,6", "iPad2,7": return iPadMini
        case "iPad4,4", "iPad4,5", "iPad4,6": return iPadMini2
        case "iPad4,7", "iPad4,8", "iPad4,9": return iPadMini3
        case "iPad5,1", "iPad5,2": return iPadMini4
        case "iPad6,3", "iPad6,4": return iPadPro9Inch
        case "iPad6,7", "iPad6,8": return iPadPro12Inch
        case "iPad7,1", "iPad7,2": return iPadPro12Inch2
        case "iPad7,3", "iPad7,4": return iPadPro10Inch
        case "AudioAccessory1,1": return homePod
        case "i386", "x86_64": return simulator(mapToFDDevice(identifier: ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] ?? "iOS"))
        default: return unknown(identifier)
        }
        #elseif os(tvOS)
        switch identifier {
        case "AppleTV5,3": return appleTV4
        case "AppleTV6,2": return appleTV4K
        case "i386", "x86_64": return simulator(mapToFDDevice(identifier: ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] ?? "tvOS"))
        default: return unknown(identifier)
        }
        #endif
    }
    
    #if os(iOS)
    /// All iPods
    public static var allPods: [FDDevice] {
        return [.iPodTouch5, .iPodTouch6]
    }
    
    /// All iPhones
    public static var allPhones: [FDDevice] {
        return [.iPhone4, .iPhone4s, .iPhone5, .iPhone5c, .iPhone5s, .iPhone6, .iPhone6Plus, .iPhone6s, .iPhone6sPlus, .iPhone7, .iPhone7Plus, .iPhoneSE, .iPhone8, .iPhone8Plus, .iPhoneX, .iPhoneXR, .iPhoneXS, .iPhoneXSMAX]
    }
    
    /// All iPads
    public static var allPads: [FDDevice] {
        return [.iPad2, .iPad3, .iPad4, .iPadAir, .iPadAir2, .iPad5, .iPad6, .iPadMini, .iPadMini2, .iPadMini3, .iPadMini4, .iPadPro9Inch, .iPadPro12Inch, .iPadPro12Inch2, .iPadPro10Inch]
    }
    
    /// All Plus-Sized FDDevices
    public static var allPlusSizedFDDevices: [FDDevice] {
        return [.iPhone6Plus, .iPhone6sPlus, .iPhone7Plus, .iPhone8Plus]
    }
    
    /// All Pro FDDevices
    public static var allProFDDevices: [FDDevice] {
        return [.iPadPro9Inch, .iPadPro12Inch, .iPadPro12Inch2, .iPadPro10Inch]
    }
    
    /// All simulator iPods
    public static var allSimulatorPods: [FDDevice] {
        return allPods.map(FDDevice.simulator)
    }
    
    /// All simulator iPhones
    public static var allSimulatorPhones: [FDDevice] {
        return allPhones.map(FDDevice.simulator)
    }
    
    /// All simulator iPads
    public static var allSimulatorPads: [FDDevice] {
        return allPads.map(FDDevice.simulator)
    }
    
    /// All simulator Plus-Sized FDDevices
    public static var allSimulatorPlusSizedFDDevices: [FDDevice] {
        return allPlusSizedFDDevices.map(FDDevice.simulator)
    }
    
    /// All simulator Pro FDDevices
    public static var allSimulatorProFDDevices: [FDDevice] {
        return allProFDDevices.map(FDDevice.simulator)
    }
    
    /// Returns whether the FDDevice is an iPod (real or simulator)
    public var isPod: Bool {
        return isOneOf(FDDevice.allPods) || isOneOf(FDDevice.allSimulatorPods)
    }
    
    /// Returns whether the FDDevice is an iPhone (real or simulator)
    public var isPhone: Bool {
        return (isOneOf(FDDevice.allPhones) || isOneOf(FDDevice.allSimulatorPhones) || UIDevice.current.userInterfaceIdiom == .phone) && !isPod
    }
    
    /// Returns whether the FDDevice is an iPad (real or simulator)
    public var isPad: Bool {
        return isOneOf(FDDevice.allPads) || isOneOf(FDDevice.allSimulatorPads) || UIDevice.current.userInterfaceIdiom == .pad
    }
    
    /// Returns whether the FDDevice is any of the simulator
    /// Useful when there is a need to check and skip running a portion of code (location request or others)
    public var isSimulator: Bool {
        return isOneOf(FDDevice.allSimulators)
    }
    
    public var isZoomed: Bool {
        // TODO: Longterm we need a better solution for this!
        guard self != .iPhoneX else { return false }
        if Int(UIScreen.main.scale.rounded()) == 3 {
            // Plus-sized
            return UIScreen.main.nativeScale > 2.7
        } else {
            return UIScreen.main.nativeScale > UIScreen.main.scale
        }
    }
    
    /// Returns diagonal screen length in inches
    public var diagonal: Double {
        switch self {
        case .iPodTouch5: return 4
        case .iPodTouch6: return 4
        case .iPhone4: return 3.5
        case .iPhone4s: return 3.5
        case .iPhone5: return 4
        case .iPhone5c: return 4
        case .iPhone5s: return 4
        case .iPhone6: return 4.7
        case .iPhone6Plus: return 5.5
        case .iPhone6s: return 4.7
        case .iPhone6sPlus: return 5.5
        case .iPhone7: return 4.7
        case .iPhone7Plus: return 5.5
        case .iPhoneSE: return 4
        case .iPhone8: return 4.7
        case .iPhone8Plus: return 5.5
        case .iPhoneX: return 5.8
        case .iPhoneXR: return 6.1
        case .iPhoneXS: return 5.8
        case .iPhoneXSMAX: return 6.5
        case .iPad2: return 9.7
        case .iPad3: return 9.7
        case .iPad4: return 9.7
        case .iPadAir: return 9.7
        case .iPadAir2: return 9.7
        case .iPad5: return 9.7
        case .iPad6: return 9.7
        case .iPadMini: return 7.9
        case .iPadMini2: return 7.9
        case .iPadMini3: return 7.9
        case .iPadMini4: return 7.9
        case .iPadPro9Inch: return 9.7
        case .iPadPro12Inch: return 12.9
        case .iPadPro12Inch2: return 12.9
        case .iPadPro10Inch: return 10.5
        case .homePod: return -1
        case .simulator(let model): return model.diagonal
        case .unknown: return -1
        }
    }
    
    /// Returns screen ratio as a tuple
    public var screenRatio: (width: Double, height: Double) {
        switch self {
        case .iPodTouch5: return (width: 9, height: 16)
        case .iPodTouch6: return (width: 9, height: 16)
        case .iPhone4: return (width: 2, height: 3)
        case .iPhone4s: return (width: 2, height: 3)
        case .iPhone5: return (width: 9, height: 16)
        case .iPhone5c: return (width: 9, height: 16)
        case .iPhone5s: return (width: 9, height: 16)
        case .iPhone6: return (width: 9, height: 16)
        case .iPhone6Plus: return (width: 9, height: 16)
        case .iPhone6s: return (width: 9, height: 16)
        case .iPhone6sPlus: return (width: 9, height: 16)
        case .iPhone7: return (width: 9, height: 16)
        case .iPhone7Plus: return (width: 9, height: 16)
        case .iPhoneSE: return (width: 9, height: 16)
        case .iPhone8: return (width: 9, height: 16)
        case .iPhone8Plus: return (width: 9, height: 16)
        case .iPhoneX: return (width: 9, height: 19.5)
        case .iPhoneXR: return (width: 9, height: 19.5)
        case .iPhoneXS: return (width: 9, height: 19.5)
        case .iPhoneXSMAX: return (width: 9, height: 19.5)
        case .iPad2: return (width: 3, height: 4)
        case .iPad3: return (width: 3, height: 4)
        case .iPad4: return (width: 3, height: 4)
        case .iPadAir: return (width: 3, height: 4)
        case .iPadAir2: return (width: 3, height: 4)
        case .iPad5: return (width: 3, height: 4)
        case .iPad6: return (width: 3, height: 4)
        case .iPadMini: return (width: 3, height: 4)
        case .iPadMini2: return (width: 3, height: 4)
        case .iPadMini3: return (width: 3, height: 4)
        case .iPadMini4: return (width: 3, height: 4)
        case .iPadPro9Inch: return (width: 3, height: 4)
        case .iPadPro12Inch: return (width: 3, height: 4)
        case .iPadPro12Inch2: return (width: 3, height: 4)
        case .iPadPro10Inch: return (width: 3, height: 4)
        case .homePod: return (width: 4, height: 5)
        case .simulator(let model): return model.screenRatio
        case .unknown: return (width: -1, height: -1)
        }
    }
    #elseif os(tvOS)
    /// All TVs
    public static var allTVs: [FDDevice] {
        return [.appleTV4, .appleTV4K]
    }
    
    /// All simulator TVs
    public static var allSimulatorTVs: [FDDevice] {
        return allTVs.map(FDDevice.simulator)
    }
    #endif
    
    /// All real FDDevices (i.e. all FDDevices except for all simulators)
    public static var allRealFDDevices: [FDDevice] {
        #if os(iOS)
        return allPods + allPhones + allPads
        #elseif os(tvOS)
        return allTVs
        #endif
    }
    
    /// All simulators
    public static var allSimulators: [FDDevice] {
        return allRealFDDevices.map(FDDevice.simulator)
    }
    
    /**
     This method saves you in many cases from the need of updating your code with every new FDDevice.
     Most uses for an enum like this are the following:
     
     ```
     switch FDDevice() {
     case .iPodTouch5, .iPodTouch6: callMethodOnIPods()
     case .iPhone4, iPhone4s, .iPhone5, .iPhone5s, .iPhone6, .iPhone6Plus, .iPhone6s, .iPhone6sPlus, .iPhone7, .iPhone7Plus, .iPhoneSE, .iPhone8, .iPhone8Plus, .iPhoneX: callMethodOnIPhones()
     case .iPad2, .iPad3, .iPad4, .iPadAir, .iPadAir2, .iPadMini, .iPadMini2, .iPadMini3, .iPadMini4, .iPadPro: callMethodOnIPads()
     default: break
     }
     ```
     This code can now be replaced with
     
     ```
     let FDDevice = FDDevice()
     if FDDevice.isOneOf(FDDevice.allPods) {
     callMethodOnIPods()
     } else if FDDevice.isOneOf(FDDevice.allPhones) {
     callMethodOnIPhones()
     } else if FDDevice.isOneOf(FDDevice.allPads) {
     callMethodOnIPads()
     }
     ```
     
     - parameter FDDevices: An array of FDDevices.
     
     - returns: Returns whether the current FDDevice is one of the passed in ones.
     */
    public func isOneOf(_ FDDevices: [FDDevice]) -> Bool {
        return FDDevices.contains(self)
    }
    
    /// The name identifying the FDDevice (e.g. "Dennis' iPhone").
    public var name: String {
        return UIDevice.current.name
    }
    
    /// The name of the operating system running on the FDDevice represented by the receiver (e.g. "iOS" or "tvOS").
    public var systemName: String {
        return UIDevice.current.systemName
    }
    
    /// The current version of the operating system (e.g. 8.4 or 9.2).
    public var systemVersion: String {
        return UIDevice.current.systemVersion
    }
    
    /// The model of the FDDevice (e.g. "iPhone" or "iPod Touch").
    public var model: String {
        return UIDevice.current.model
    }
    
    /// The model of the FDDevice as a localized string.
    public var localizedModel: String {
        return UIDevice.current.localizedModel
    }
    
    /// PPI (Pixels per Inch) on the current FDDevice's screen (if applicable). When the FDDevice is not applicable this property returns nil.
    public var ppi: Int? {
        #if os(iOS)
        switch self {
        case .iPodTouch5: return 326
        case .iPodTouch6: return 326
        case .iPhone4: return 326
        case .iPhone4s: return 326
        case .iPhone5: return 326
        case .iPhone5c: return 326
        case .iPhone5s: return 326
        case .iPhone6: return 326
        case .iPhone6Plus: return 401
        case .iPhone6s: return 326
        case .iPhone6sPlus: return 401
        case .iPhone7: return 326
        case .iPhone7Plus: return 401
        case .iPhoneSE: return 326
        case .iPhone8: return 326
        case .iPhone8Plus: return 401
        case .iPhoneX: return 458
        case .iPhoneXR: return 326
        case .iPhoneXS: return 458
        case .iPhoneXSMAX: return 458
        case .iPad2: return 132
        case .iPad3: return 264
        case .iPad4: return 264
        case .iPadAir: return 264
        case .iPadAir2: return 264
        case .iPad5: return 264
        case .iPad6: return 264
        case .iPadMini: return 163
        case .iPadMini2: return 326
        case .iPadMini3: return 326
        case .iPadMini4: return 326
        case .iPadPro9Inch: return 264
        case .iPadPro12Inch: return 264
        case .iPadPro12Inch2: return 264
        case .iPadPro10Inch: return 264
        case .homePod: return -1
        case .simulator(let model): return model.ppi
        case .unknown: return nil
        }
        #elseif os(tvOS)
        return nil
        #endif
    }
    
    /// True when a Guided Access session is currently active; otherwise, false.
    public var isGuidedAccessSessionActive: Bool {
        #if os(iOS)
        return UIAccessibility.isGuidedAccessEnabled
        #else
        return false
        #endif
    }
    
    /// The brightness level of the screen.
    public var screenBrightness: Int {
        #if os(iOS)
        return Int(UIScreen.main.brightness * 100)
        #else
        return 100
        #endif
    }
}

// MARK: - CustomStringConvertible
extension FDDevice: CustomStringConvertible {
    
    /// A textual representation of the FDDevice.
    public var description: String {
        #if os(iOS)
        switch self {
        case .iPodTouch5: return "iPod Touch 5"
        case .iPodTouch6: return "iPod Touch 6"
        case .iPhone4: return "iPhone 4"
        case .iPhone4s: return "iPhone 4s"
        case .iPhone5: return "iPhone 5"
        case .iPhone5c: return "iPhone 5c"
        case .iPhone5s: return "iPhone 5s"
        case .iPhone6: return "iPhone 6"
        case .iPhone6Plus: return "iPhone 6 Plus"
        case .iPhone6s: return "iPhone 6s"
        case .iPhone6sPlus: return "iPhone 6s Plus"
        case .iPhone7: return "iPhone 7"
        case .iPhone7Plus: return "iPhone 7 Plus"
        case .iPhoneSE: return "iPhone SE"
        case .iPhone8: return "iPhone 8"
        case .iPhone8Plus: return "iPhone 8 Plus"
        case .iPhoneX: return "iPhone X"
        case .iPhoneXR: return "iPhone XR"
        case .iPhoneXS: return "iPhone XS"
        case .iPhoneXSMAX: return "iPhone XSMAX"
        case .iPad2: return "iPad 2"
        case .iPad3: return "iPad 3"
        case .iPad4: return "iPad 4"
        case .iPadAir: return "iPad Air"
        case .iPadAir2: return "iPad Air 2"
        case .iPad5: return "iPad 5"
        case .iPad6: return "iPad 6"
        case .iPadMini: return "iPad Mini"
        case .iPadMini2: return "iPad Mini 2"
        case .iPadMini3: return "iPad Mini 3"
        case .iPadMini4: return "iPad Mini 4"
        case .iPadPro9Inch: return "iPad Pro (9.7-inch)"
        case .iPadPro12Inch: return "iPad Pro (12.9-inch)"
        case .iPadPro12Inch2: return "iPad Pro (12.9-inch) 2"
        case .iPadPro10Inch: return "iPad Pro (10.5-inch)"
        case .homePod: return "HomePod"
        case .simulator(let model): return "Simulator (\(model))"
        case .unknown(let identifier): return identifier
        }
        #elseif os(tvOS)
        switch self {
        case .appleTV4: return "Apple TV 4"
        case .appleTV4K: return "Apple TV 4K"
        case .simulator(let model): return "Simulator (\(model))"
        case .unknown(let identifier): return identifier
        }
        #endif
    }
}

// MARK: - Equatable
extension FDDevice: Equatable {
    
    /// Compares two FDDevices
    ///
    /// - parameter lhs: A FDDevice.
    /// - parameter rhs: Another FDDevice.
    ///
    /// - returns: `true` iff the underlying identifier is the same.
    public static func == (lhs: FDDevice, rhs: FDDevice) -> Bool {
        return lhs.description == rhs.description
    }
    
}

#if os(iOS)
// MARK: - Battery
extension FDDevice {
    /**
     This enum describes the state of the battery.
     
     - Full:      The FDDevice is plugged into power and the battery is 100% charged or the FDDevice is the iOS Simulator.
     - Charging:  The FDDevice is plugged into power and the battery is less than 100% charged.
     - Unplugged: The FDDevice is not plugged into power; the battery is discharging.
     */
    public enum BatteryState: CustomStringConvertible, Equatable {
        /// The FDDevice is plugged into power and the battery is 100% charged or the FDDevice is the iOS Simulator.
        case full
        /// The FDDevice is plugged into power and the battery is less than 100% charged.
        /// The associated value is in percent (0-100).
        case charging(Int)
        /// The FDDevice is not plugged into power; the battery is discharging.
        /// The associated value is in percent (0-100).
        case unplugged(Int)
        
        fileprivate init() {
            let wasBatteryMonitoringEnabled = UIDevice.current.isBatteryMonitoringEnabled
            UIDevice.current.isBatteryMonitoringEnabled = true
            let batteryLevel = Int(round(UIDevice.current.batteryLevel * 100)) // round() is actually not needed anymore since -[batteryLevel] seems to always return a two-digit precision number
            // but maybe that changes in the future.
            switch UIDevice.current.batteryState {
            case .charging: self = .charging(batteryLevel)
            case .full: self = .full
            case .unplugged:self = .unplugged(batteryLevel)
            case .unknown: self = .full // Should never happen since `batteryMonitoring` is enabled.
            }
            UIDevice.current.isBatteryMonitoringEnabled = wasBatteryMonitoringEnabled
        }
        
        /// The user enabled Low Power mode
        public var lowPowerMode: Bool {
            if #available(iOS 9.0, *) {
                return ProcessInfo.processInfo.isLowPowerModeEnabled
            } else {
                return false
            }
        }
        
        /// Provides a textual representation of the battery state.
        /// Examples:
        /// ```
        /// Battery level: 90%, FDDevice is plugged in.
        /// Battery level: 100 % (Full), FDDevice is plugged in.
        /// Battery level: \(batteryLevel)%, FDDevice is unplugged.
        /// ```
        public var description: String {
            switch self {
            case .charging(let batteryLevel): return "Battery level: \(batteryLevel)%, FDDevice is plugged in."
            case .full: return "Battery level: 100 % (Full), FDDevice is plugged in."
            case .unplugged(let batteryLevel): return "Battery level: \(batteryLevel)%, FDDevice is unplugged."
            }
        }
        
    }
    
    /// The state of the battery
    public var batteryState: BatteryState {
        return BatteryState()
    }
    
    /// Battery level ranges from 0 (fully discharged) to 100 (100% charged).
    public var batteryLevel: Int {
        switch BatteryState() {
        case .charging(let value): return value
        case .full: return 100
        case .unplugged(let value): return value
        }
    }
    
}

// MARK: - FDDevice.Batterystate: Comparable
extension FDDevice.BatteryState: Comparable {
    /// Tells if two battery states are equal.
    ///
    /// - parameter lhs: A battery state.
    /// - parameter rhs: Another battery state.
    ///
    /// - returns: `true` iff they are equal, otherwise `false`
    public static func == (lhs: FDDevice.BatteryState, rhs: FDDevice.BatteryState) -> Bool {
        return lhs.description == rhs.description
    }
    
    /// Compares two battery states.
    ///
    /// - parameter lhs: A battery state.
    /// - parameter rhs: Another battery state.
    ///
    /// - returns: `true` if rhs is `.Full`, `false` when lhs is `.Full` otherwise their battery level is compared.
    public static func < (lhs: FDDevice.BatteryState, rhs: FDDevice.BatteryState) -> Bool {
        switch (lhs, rhs) {
        case (.full, _): return false // return false (even if both are `.Full` -> they are equal)
        case (_, .full): return true // lhs is *not* `.Full`, rhs is
        case (.charging(let lhsLevel), .charging(let rhsLevel)): return lhsLevel < rhsLevel
        case (.charging(let lhsLevel), .unplugged(let rhsLevel)): return lhsLevel < rhsLevel
        case (.unplugged(let lhsLevel), .charging(let rhsLevel)): return lhsLevel < rhsLevel
        case (.unplugged(let lhsLevel), .unplugged(let rhsLevel)): return lhsLevel < rhsLevel
        default: return false // compiler won't compile without it, though it cannot happen
        }
    }
}

#endif

#if os(iOS)
extension FDDevice {
    // MARK: - Orientation
    /**
     This enum describes the state of the orientation.
     - Landscape: The FDDevice is in Landscape Orientation
     - Portrait:  The FDDevice is in Portrait Orientation
     */
    public enum Orientation {
        case landscape
        case portrait
    }
    
    public var orientation: Orientation {
        if UIDevice.current.orientation.isLandscape {
            return .landscape
        } else {
            return .portrait
        }
    }
}

#endif

#if os(iOS)
// MARK: - DiskSpace
@available(iOS 11.0, *)
extension FDDevice {
    
    /// Return the root url
    ///
    /// - returns: the "/" url
    private static var rootURL = {
        return URL(fileURLWithPath: "/")
    }()
    
    /// The volume’s total capacity in bytes.
    public static var volumeTotalCapacity: Int? {
        do {
            let values = try FDDevice.rootURL.resourceValues(forKeys: [.volumeTotalCapacityKey])
            return values.volumeTotalCapacity
        } catch {
            return nil
        }
    }
    
    /// The volume’s available capacity in bytes.
    public static var volumeAvailableCapacity: Int? {
        do {
            let values = try rootURL.resourceValues(forKeys: [.volumeAvailableCapacityKey])
            return values.volumeAvailableCapacity
        } catch {
            return nil
        }
    }
    
    /// The volume’s available capacity in bytes for storing important resources.
    public static var volumeAvailableCapacityForImportantUsage: Int64? {
        do {
            let values = try rootURL.resourceValues(forKeys: [.volumeAvailableCapacityForImportantUsageKey])
            return values.volumeAvailableCapacityForImportantUsage
        } catch {
            return nil
        }
    }
    
    /// The volume’s available capacity in bytes for storing nonessential resources.
    public static var volumeAvailableCapacityForOpportunisticUsage: Int64? { //swiftlint:disable:this identifier_name
        do {
            let values = try rootURL.resourceValues(forKeys: [.volumeAvailableCapacityForOpportunisticUsageKey])
            return values.volumeAvailableCapacityForOpportunisticUsage
        } catch {
            return nil
        }
    }
    
    /// All volumes capacity information in bytes.
    public static var volumes: [URLResourceKey: Int64]? {
        do {
            let values = try rootURL.resourceValues(forKeys: [
                .volumeAvailableCapacityForImportantUsageKey,
                .volumeAvailableCapacityKey,
                .volumeAvailableCapacityForOpportunisticUsageKey,
                .volumeTotalCapacityKey
                ])
            return values.allValues.mapValues {
                if let int = $0 as? Int64 {
                    return int
                }
                if let int = $0 as? Int {
                    return Int64(int)
                }
                return 0
            }
        } catch {
            return nil
        }
    }
    
}
#endif

extension FDDevice {
    
    /// 获取设备通信ip
    ///
    /// - Returns: 获取不到返回 ""
    public static func ipAddresses() -> String {
        var addresses: [String] = []
        var ifaddr : UnsafeMutablePointer<ifaddrs>? = nil
        if getifaddrs(&ifaddr) == 0 {
            var ptr = ifaddr
            while (ptr != nil) {
                let flags = Int32(ptr!.pointee.ifa_flags)
                var addr = ptr!.pointee.ifa_addr.pointee
                if (flags & (IFF_UP|IFF_RUNNING|IFF_LOOPBACK)) == (IFF_UP|IFF_RUNNING) {
                    // // Check for IPv4 or IPv6 interface:  UInt8(AF_INET6)
                    if addr.sa_family == UInt8(AF_INET) {
                        var hostname = [CChar](repeating: 0, count: Int(NI_MAXHOST))
                        if (getnameinfo(&addr, socklen_t(addr.sa_len), &hostname, socklen_t(hostname.count),nil, socklen_t(0), NI_NUMERICHOST) == 0) {
                            if let address = String(validatingUTF8:hostname) {
                                addresses.append(address)
                            }
                        }
                    }
                }
                ptr = ptr!.pointee.ifa_next
            }
            freeifaddrs(ifaddr)
        }
        return addresses.first ?? ""
    }
}
