//
// jellyfin-sdk-swift is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2024 Jellyfin & Jellyfin Contributors
//

import Foundation
import Get
import URLQueryEncoder

extension Paths {
    /// Get user view grouping options.
    public static func getGroupingOptions(userID: String? = nil) -> Request<[JellyfinAPI.SpecialViewOptionDto]> {
        Request(path: "/UserViews/GroupingOptions", method: "GET", query: makeGetGroupingOptionsQuery(userID), id: "GetGroupingOptions")
    }

    private static func makeGetGroupingOptionsQuery(_ userID: String?) -> [(String, String?)] {
        let encoder = URLQueryEncoder()
        encoder.encode(userID, forKey: "userId")
        return encoder.items
    }
}
