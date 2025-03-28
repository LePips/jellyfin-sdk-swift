//
// jellyfin-sdk-swift is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2025 Jellyfin & Jellyfin Contributors
//

import Foundation
import Get
import URLQueryEncoder

extension Paths {
    /// Gets local trailers for an item.
    public static func getLocalTrailers(itemID: String, userID: String? = nil) -> Request<[JellyfinAPI.BaseItemDto]> {
        Request(path: "/Items/\(itemID)/LocalTrailers", method: "GET", query: makeGetLocalTrailersQuery(userID), id: "GetLocalTrailers")
    }

    private static func makeGetLocalTrailersQuery(_ userID: String?) -> [(String, String?)] {
        let encoder = URLQueryEncoder()
        encoder.encode(userID, forKey: "userId")
        return encoder.items
    }
}
