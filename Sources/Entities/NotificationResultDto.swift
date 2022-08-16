//
// jellyfin-sdk-swift is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2022 Jellyfin & Jellyfin Contributors
//

import Foundation

/// A list of notifications with the total record count for pagination.
public struct NotificationResultDto: Codable {
    /// Gets or sets the current page of notifications.
    public var notifications: [NotificationDto]?
    /// Gets or sets the total number of notifications.
    public var totalRecordCount: Int?

    public init(notifications: [NotificationDto]? = nil, totalRecordCount: Int? = nil) {
        self.notifications = notifications
        self.totalRecordCount = totalRecordCount
    }
}
