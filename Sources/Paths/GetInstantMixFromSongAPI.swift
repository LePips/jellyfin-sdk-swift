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
    /// Creates an instant playlist based on a given song.
    static func getInstantMixFromSong(
        id: String,
        parameters: GetInstantMixFromSongParameters? = nil
    ) -> Request<JellyfinAPI.BaseItemDtoQueryResult> {
        Request(method: "GET", url: "/Songs/\(id)/InstantMix", query: parameters?.asQuery, id: "GetInstantMixFromSong")
    }

    struct GetInstantMixFromSongParameters {
        public var userID: UUID?
        public var limit: Int?
        public var fields: [JellyfinAPI.ItemFields]?
        public var enableImages: Bool?
        public var enableUserData: Bool?
        public var imageTypeLimit: Int?
        public var enableImageTypes: [JellyfinAPI.ImageType]?

        public init(
            userID: UUID? = nil,
            limit: Int? = nil,
            fields: [JellyfinAPI.ItemFields]? = nil,
            enableImages: Bool? = nil,
            enableUserData: Bool? = nil,
            imageTypeLimit: Int? = nil,
            enableImageTypes: [JellyfinAPI.ImageType]? = nil
        ) {
            self.userID = userID
            self.limit = limit
            self.fields = fields
            self.enableImages = enableImages
            self.enableUserData = enableUserData
            self.imageTypeLimit = imageTypeLimit
            self.enableImageTypes = enableImageTypes
        }

        public var asQuery: [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(userID, forKey: "userId")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(fields, forKey: "fields")
            encoder.encode(enableImages, forKey: "enableImages")
            encoder.encode(enableUserData, forKey: "enableUserData")
            encoder.encode(imageTypeLimit, forKey: "imageTypeLimit")
            encoder.encode(enableImageTypes, forKey: "enableImageTypes")
            return encoder.items
        }
    }
}
