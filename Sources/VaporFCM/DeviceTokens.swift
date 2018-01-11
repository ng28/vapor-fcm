//
//  DeviceTokens.swift
//  VaporFCM
//
//  Created by Ng on 1/11/18.
//

/// This represents one or more FCM device tokens
public struct DeviceTokens: RawRepresentable {
    public var rawValue: String
    public typealias RawValue = String
    public let rawValues: Array<String>
    
    public init?(rawValue: String) {
        self.rawValue = ""
        self.rawValues = Array<String>()
    }
    
    public init(_ rawValues: Array<String>) {
        self.rawValue = ""
        self.rawValues = rawValues
    }
}

extension DeviceTokens: Targetable {
    public var targetKey: String {
        return "registration_ids"
    }
    
    public var targetValue: Any {
        return rawValues
    }
}
