//
// jellyfin-sdk-swift is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2022 Jellyfin & Jellyfin Contributors
//

import Foundation

/// Class SearchHintResult.
public struct SearchHintResult: Codable {
    /// Gets the search hints.
    public var searchHints: [SearchHint]?
    /// Gets the total record count.
    public var totalRecordCount: Int?

    public init(searchHints: [SearchHint]? = nil, totalRecordCount: Int? = nil) {
        self.searchHints = searchHints
        self.totalRecordCount = totalRecordCount
    }
}
