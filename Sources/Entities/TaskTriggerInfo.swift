//
// jellyfin-sdk-swift is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2022 Jellyfin & Jellyfin Contributors
//

import Foundation

/// Class TaskTriggerInfo.
public struct TaskTriggerInfo: Codable {
    /// Gets or sets the day of week.
    public var dayOfWeek: DayOfWeek?
    /// Gets or sets the interval.
    public var intervalTicks: Int64?
    /// Gets or sets the maximum runtime ticks.
    public var maxRuntimeTicks: Int64?
    /// Gets or sets the time of day.
    public var timeOfDayTicks: Int64?
    /// Gets or sets the type.
    public var type: String?

    public init(
        dayOfWeek: DayOfWeek? = nil,
        intervalTicks: Int64? = nil,
        maxRuntimeTicks: Int64? = nil,
        timeOfDayTicks: Int64? = nil,
        type: String? = nil
    ) {
        self.dayOfWeek = dayOfWeek
        self.intervalTicks = intervalTicks
        self.maxRuntimeTicks = maxRuntimeTicks
        self.timeOfDayTicks = timeOfDayTicks
        self.type = type
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.dayOfWeek = try values.decodeIfPresent(DayOfWeek.self, forKey: "DayOfWeek")
        self.intervalTicks = try values.decodeIfPresent(Int64.self, forKey: "IntervalTicks")
        self.maxRuntimeTicks = try values.decodeIfPresent(Int64.self, forKey: "MaxRuntimeTicks")
        self.timeOfDayTicks = try values.decodeIfPresent(Int64.self, forKey: "TimeOfDayTicks")
        self.type = try values.decodeIfPresent(String.self, forKey: "Type")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(dayOfWeek, forKey: "DayOfWeek")
        try values.encodeIfPresent(intervalTicks, forKey: "IntervalTicks")
        try values.encodeIfPresent(maxRuntimeTicks, forKey: "MaxRuntimeTicks")
        try values.encodeIfPresent(timeOfDayTicks, forKey: "TimeOfDayTicks")
        try values.encodeIfPresent(type, forKey: "Type")
    }
}