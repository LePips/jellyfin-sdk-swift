//
// jellyfin-sdk-swift is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2022 Jellyfin & Jellyfin Contributors
//

import Foundation

public struct DeviceProfileInfo: Codable, Identifiable {
    /// Gets or sets the identifier.
    public var id: String?
    /// Gets or sets the name.
    public var name: String?
    /// Gets or sets the type.
    public var type: DeviceProfileType?

    public init(id: String? = nil, name: String? = nil, type: DeviceProfileType? = nil) {
        self.id = id
        self.name = name
        self.type = type
    }
}
