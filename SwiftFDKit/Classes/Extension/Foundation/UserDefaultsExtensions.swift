//
//  UserDefaultsExtensions.swift
//  FDFoundation
//
//  Created by Yongpeng Zhu 朱永鹏 on 2018/3/23.
//  Copyright © 2018年 Yongpeng Zhu 朱永鹏. All rights reserved.
//


// MARK: - Methods
public extension UserDefaults {
    
    /// FDFoundation: get object from UserDefaults by using subscript
    ///
    /// - Parameter key: key in the current user's defaults database.
    public subscript(fd_key: String) -> Any? {
        get {
            return object(forKey: fd_key)
        }
        set {
            set(newValue, forKey: fd_key)
        }
    }
    
    /// FDFoundation: Float from UserDefaults.
    ///
    /// - Parameter forKey: key to find float for.
    /// - Returns: Float object for key (if exists).
    public func fd_float(forKey key: String) -> Float? {
        return object(forKey: key) as? Float
    }
    
    /// FDFoundation: Date from UserDefaults.
    ///
    /// - Parameter forKey: key to find date for.
    /// - Returns: Date object for key (if exists).
    public func fd_date(forKey key: String) -> Date? {
        return object(forKey: key) as? Date
    }
    
    /// FDFoundation: Retrieves a Codable object from UserDefaults.
    ///
    /// - Parameters:
    ///   - type: Class that conforms to the Codable protocol.
    ///   - key: Identifier of the object.
    ///   - decoder: Custom JSONDecoder instance. Defaults to `JSONDecoder()`.
    /// - Returns: Codable object for key (if exists).
    public func fd_object<T: Codable>(_ type: T.Type,
                                   with key: String,
                                   usingDecoder decoder: JSONDecoder = JSONDecoder()) -> T? {
        guard let data = self.value(forKey: key) as? Data else { return nil }
        
        return try? decoder.decode(type.self, from: data)
    }
    
    /// FDFoundation: Allows storing of Codable objects to UserDefaults.
    ///
    /// - Parameters:
    ///   - object: Codable object to store.
    ///   - key: Identifier of the object.
    ///   - encoder: Custom JSONEncoder instance. Defaults to `JSONEncoder()`.
    public func fd_set<T: Codable>(object: T,
                                forKey key: String,
                                usingEncoder encoder: JSONEncoder = JSONEncoder()) {
        let data = try? encoder.encode(object)
        self.set(data, forKey: key)
    }
    
}
