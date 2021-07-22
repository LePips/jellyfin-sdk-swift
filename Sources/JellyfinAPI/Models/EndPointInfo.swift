//
// EndPointInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct EndPointInfo: Codable, Hashable {

    public var isLocal: Bool?
    public var isInNetwork: Bool?

    public init(isLocal: Bool? = nil, isInNetwork: Bool? = nil) {
        self.isLocal = isLocal
        self.isInNetwork = isInNetwork
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case isLocal = "IsLocal"
        case isInNetwork = "IsInNetwork"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(isLocal, forKey: .isLocal)
        try encoderContainer.encodeIfPresent(isInNetwork, forKey: .isInNetwork)
    }
}