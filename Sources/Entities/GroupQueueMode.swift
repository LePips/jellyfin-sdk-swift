//
// Swiftfin is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2022 Jellyfin & Jellyfin Contributors
//

import Foundation

/// Enum GroupQueueMode.
public enum GroupQueueMode: String, Codable, CaseIterable {
    case queue = "Queue"
    case queueNext = "QueueNext"
}
