//
// jellyfin-sdk-swift is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2022 Jellyfin & Jellyfin Contributors
//

import Foundation

/// The create user by name request body.
public struct CreateUserByName: Codable {
    /// Gets or sets the username.
    public var name: String?
    /// Gets or sets the password.
    public var password: String?

    public init(name: String? = nil, password: String? = nil) {
        self.name = name
        self.password = password
    }
}
