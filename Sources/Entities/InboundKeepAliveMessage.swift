//
// jellyfin-sdk-swift is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2024 Jellyfin & Jellyfin Contributors
//

import Foundation

/// Keep alive websocket messages.
public struct InboundKeepAliveMessage: Codable, Hashable {
    /// The different kinds of messages that are used in the WebSocket api.
    public var messageType: SessionMessageType?

    public init(messageType: SessionMessageType? = nil) {
        self.messageType = messageType
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.messageType = try values.decodeIfPresent(SessionMessageType.self, forKey: "MessageType")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(messageType, forKey: "MessageType")
    }
}
