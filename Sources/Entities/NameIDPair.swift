//
// Swiftfin is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2022 Jellyfin & Jellyfin Contributors
//

import Foundation

public struct NameIDPair: Codable, Identifiable {
    /// Gets or sets the identifier.
    public var id: String?
    /// Gets or sets the name.
    public var name: String?

    public init(id: String? = nil, name: String? = nil) {
        self.id = id
        self.name = name
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(String.self, forKey: "Id")
        self.name = try values.decodeIfPresent(String.self, forKey: "Name")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "Id")
        try values.encodeIfPresent(name, forKey: "Name")
    }
}
