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
    /// Gets a live tv series timer.
    static func getSeriesTimer(timerID: String) -> Request<JellyfinAPI.SeriesTimerInfoDto> {
        Request(method: "GET", url: "/LiveTv/SeriesTimers/\(timerID)", id: "GetSeriesTimer")
    }
}
