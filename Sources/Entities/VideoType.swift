//
// Swiftfin is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2022 Jellyfin & Jellyfin Contributors
//

import Foundation

/// Enum VideoType.
public enum VideoType: String, Codable, CaseIterable {
    case videoFile = "VideoFile"
    case iso = "Iso"
    case dvd = "Dvd"
    case bluRay = "BluRay"
}
