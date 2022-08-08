//
// Swiftfin is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2022 Jellyfin & Jellyfin Contributors
//

import Foundation

public enum ProfileConditionType: String, Codable, CaseIterable {
    case equals = "Equals"
    case notEquals = "NotEquals"
    case lessThanEqual = "LessThanEqual"
    case greaterThanEqual = "GreaterThanEqual"
    case equalsAny = "EqualsAny"
}
