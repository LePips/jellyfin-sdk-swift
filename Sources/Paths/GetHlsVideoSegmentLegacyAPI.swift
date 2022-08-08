//
// Swiftfin is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2022 Jellyfin & Jellyfin Contributors
//

import Foundation
import Get
import URLQueryEncoder

public extension Paths {
    /// Gets a hls video segment.
    static func getHlsVideoSegmentLegacy(itemID: String, playlistID: String, segmentID: String, segmentContainer: String) -> Request<Data> {
        Request(method: "GET", url: "/Videos/\(itemID)/hls/\(playlistID)/\(segmentID).\(segmentContainer)", id: "GetHlsVideoSegmentLegacy")
    }
}
