//
// jellyfin-sdk-swift is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2022 Jellyfin & Jellyfin Contributors
//

import Foundation
import Get
import URLQueryEncoder

public extension Paths {
    /// Gets similar items.
    static func getSimilarMovies(
        itemID: String,
        parameters: GetSimilarMoviesParameters? = nil
    ) -> Request<JellyfinAPI.BaseItemDtoQueryResult> {
        Request(method: "GET", url: "/Movies/\(itemID)/Similar", query: parameters?.asQuery, id: "GetSimilarMovies")
    }

    struct GetSimilarMoviesParameters {
        public var excludeArtistIDs: [UUID]?
        public var userID: UUID?
        public var limit: Int?
        public var fields: [JellyfinAPI.ItemFields]?

        public init(excludeArtistIDs: [UUID]? = nil, userID: UUID? = nil, limit: Int? = nil, fields: [JellyfinAPI.ItemFields]? = nil) {
            self.excludeArtistIDs = excludeArtistIDs
            self.userID = userID
            self.limit = limit
            self.fields = fields
        }

        public var asQuery: [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(excludeArtistIDs, forKey: "excludeArtistIds")
            encoder.encode(userID, forKey: "userId")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(fields, forKey: "fields")
            return encoder.items
        }
    }
}
