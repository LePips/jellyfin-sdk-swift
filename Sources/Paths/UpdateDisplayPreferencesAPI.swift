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

extension Paths {
    /// Update Display Preferences.
    public static func updateDisplayPreferences(
        displayPreferencesID: String,
        userID: UUID,
        client: String,
        _ body: JellyfinAPI.DisplayPreferencesDto
    ) -> Request<Void> {
        Request(
            method: "POST",
            url: "/DisplayPreferences/\(displayPreferencesID)",
            query: makeUpdateDisplayPreferencesQuery(userID, client),
            body: body,
            id: "UpdateDisplayPreferences"
        )
    }

    private static func makeUpdateDisplayPreferencesQuery(_ userID: UUID, _ client: String) -> [(String, String?)] {
        let encoder = URLQueryEncoder()
        encoder.encode(userID, forKey: "userId")
        encoder.encode(client, forKey: "client")
        return encoder.items
    }
}
