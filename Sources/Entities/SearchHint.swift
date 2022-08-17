//
// jellyfin-sdk-swift is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2022 Jellyfin & Jellyfin Contributors
//

import Foundation

/// Class SearchHintResult.
public struct SearchHint: Codable, Identifiable {
    /// Gets or sets the album.
    public var album: String?
    /// Gets or sets the album artist.
    public var albumArtist: String?
    public var albumID: UUID?
    /// Gets or sets the artists.
    public var artists: [String]?
    /// Gets or sets the backdrop image item identifier.
    public var backdropImageItemID: String?
    /// Gets or sets the backdrop image tag.
    public var backdropImageTag: String?
    /// Gets or sets the channel identifier.
    public var channelID: UUID?
    /// Gets or sets the name of the channel.
    public var channelName: String?
    public var endDate: Date?
    /// Gets or sets the episode count.
    public var episodeCount: Int32?
    public var id: UUID?
    /// Gets or sets the index number.
    public var indexNumber: Int32?
    public var isFolder: Bool?
    /// Gets or sets the item id.
    public var itemID: UUID?
    /// Gets or sets the matched term.
    public var matchedTerm: String?
    /// Gets or sets the type of the media.
    public var mediaType: String?
    /// Gets or sets the name.
    public var name: String?
    /// Gets or sets the parent index number.
    public var parentIndexNumber: Int32?
    /// Gets or sets the primary image aspect ratio.
    public var primaryImageAspectRatio: Double?
    /// Gets or sets the image tag.
    public var primaryImageTag: String?
    /// Gets or sets the production year.
    public var productionYear: Int32?
    /// Gets or sets the run time ticks.
    public var runTimeTicks: Int64?
    /// Gets or sets the series.
    public var series: String?
    /// Gets or sets the song count.
    public var songCount: Int32?
    public var startDate: Date?
    public var status: String?
    /// Gets or sets the thumb image item identifier.
    public var thumbImageItemID: String?
    /// Gets or sets the thumb image tag.
    public var thumbImageTag: String?
    /// Gets or sets the type.
    public var type: String?

    public init(album: String? = nil, albumArtist: String? = nil, albumID: UUID? = nil, artists: [String]? = nil, backdropImageItemID: String? = nil, backdropImageTag: String? = nil, channelID: UUID? = nil, channelName: String? = nil, endDate: Date? = nil, episodeCount: Int32? = nil, id: UUID? = nil, indexNumber: Int32? = nil, isFolder: Bool? = nil, itemID: UUID? = nil, matchedTerm: String? = nil, mediaType: String? = nil, name: String? = nil, parentIndexNumber: Int32? = nil, primaryImageAspectRatio: Double? = nil, primaryImageTag: String? = nil, productionYear: Int32? = nil, runTimeTicks: Int64? = nil, series: String? = nil, songCount: Int32? = nil, startDate: Date? = nil, status: String? = nil, thumbImageItemID: String? = nil, thumbImageTag: String? = nil, type: String? = nil) {
        self.album = album
        self.albumArtist = albumArtist
        self.albumID = albumID
        self.artists = artists
        self.backdropImageItemID = backdropImageItemID
        self.backdropImageTag = backdropImageTag
        self.channelID = channelID
        self.channelName = channelName
        self.endDate = endDate
        self.episodeCount = episodeCount
        self.id = id
        self.indexNumber = indexNumber
        self.isFolder = isFolder
        self.itemID = itemID
        self.matchedTerm = matchedTerm
        self.mediaType = mediaType
        self.name = name
        self.parentIndexNumber = parentIndexNumber
        self.primaryImageAspectRatio = primaryImageAspectRatio
        self.primaryImageTag = primaryImageTag
        self.productionYear = productionYear
        self.runTimeTicks = runTimeTicks
        self.series = series
        self.songCount = songCount
        self.startDate = startDate
        self.status = status
        self.thumbImageItemID = thumbImageItemID
        self.thumbImageTag = thumbImageTag
        self.type = type
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.album = try values.decodeIfPresent(String.self, forKey: "Album")
        self.albumArtist = try values.decodeIfPresent(String.self, forKey: "AlbumArtist")
        self.albumID = try values.decodeIfPresent(UUID.self, forKey: "AlbumId")
        self.artists = try values.decodeIfPresent([String].self, forKey: "Artists")
        self.backdropImageItemID = try values.decodeIfPresent(String.self, forKey: "BackdropImageItemId")
        self.backdropImageTag = try values.decodeIfPresent(String.self, forKey: "BackdropImageTag")
        self.channelID = try values.decodeIfPresent(UUID.self, forKey: "ChannelId")
        self.channelName = try values.decodeIfPresent(String.self, forKey: "ChannelName")
        self.endDate = try values.decodeIfPresent(Date.self, forKey: "EndDate")
        self.episodeCount = try values.decodeIfPresent(Int32.self, forKey: "EpisodeCount")
        self.id = try values.decodeIfPresent(UUID.self, forKey: "Id")
        self.indexNumber = try values.decodeIfPresent(Int32.self, forKey: "IndexNumber")
        self.isFolder = try values.decodeIfPresent(Bool.self, forKey: "IsFolder")
        self.itemID = try values.decodeIfPresent(UUID.self, forKey: "ItemId")
        self.matchedTerm = try values.decodeIfPresent(String.self, forKey: "MatchedTerm")
        self.mediaType = try values.decodeIfPresent(String.self, forKey: "MediaType")
        self.name = try values.decodeIfPresent(String.self, forKey: "Name")
        self.parentIndexNumber = try values.decodeIfPresent(Int32.self, forKey: "ParentIndexNumber")
        self.primaryImageAspectRatio = try values.decodeIfPresent(Double.self, forKey: "PrimaryImageAspectRatio")
        self.primaryImageTag = try values.decodeIfPresent(String.self, forKey: "PrimaryImageTag")
        self.productionYear = try values.decodeIfPresent(Int32.self, forKey: "ProductionYear")
        self.runTimeTicks = try values.decodeIfPresent(Int64.self, forKey: "RunTimeTicks")
        self.series = try values.decodeIfPresent(String.self, forKey: "Series")
        self.songCount = try values.decodeIfPresent(Int32.self, forKey: "SongCount")
        self.startDate = try values.decodeIfPresent(Date.self, forKey: "StartDate")
        self.status = try values.decodeIfPresent(String.self, forKey: "Status")
        self.thumbImageItemID = try values.decodeIfPresent(String.self, forKey: "ThumbImageItemId")
        self.thumbImageTag = try values.decodeIfPresent(String.self, forKey: "ThumbImageTag")
        self.type = try values.decodeIfPresent(String.self, forKey: "Type")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(album, forKey: "Album")
        try values.encodeIfPresent(albumArtist, forKey: "AlbumArtist")
        try values.encodeIfPresent(albumID, forKey: "AlbumId")
        try values.encodeIfPresent(artists, forKey: "Artists")
        try values.encodeIfPresent(backdropImageItemID, forKey: "BackdropImageItemId")
        try values.encodeIfPresent(backdropImageTag, forKey: "BackdropImageTag")
        try values.encodeIfPresent(channelID, forKey: "ChannelId")
        try values.encodeIfPresent(channelName, forKey: "ChannelName")
        try values.encodeIfPresent(endDate, forKey: "EndDate")
        try values.encodeIfPresent(episodeCount, forKey: "EpisodeCount")
        try values.encodeIfPresent(id, forKey: "Id")
        try values.encodeIfPresent(indexNumber, forKey: "IndexNumber")
        try values.encodeIfPresent(isFolder, forKey: "IsFolder")
        try values.encodeIfPresent(itemID, forKey: "ItemId")
        try values.encodeIfPresent(matchedTerm, forKey: "MatchedTerm")
        try values.encodeIfPresent(mediaType, forKey: "MediaType")
        try values.encodeIfPresent(name, forKey: "Name")
        try values.encodeIfPresent(parentIndexNumber, forKey: "ParentIndexNumber")
        try values.encodeIfPresent(primaryImageAspectRatio, forKey: "PrimaryImageAspectRatio")
        try values.encodeIfPresent(primaryImageTag, forKey: "PrimaryImageTag")
        try values.encodeIfPresent(productionYear, forKey: "ProductionYear")
        try values.encodeIfPresent(runTimeTicks, forKey: "RunTimeTicks")
        try values.encodeIfPresent(series, forKey: "Series")
        try values.encodeIfPresent(songCount, forKey: "SongCount")
        try values.encodeIfPresent(startDate, forKey: "StartDate")
        try values.encodeIfPresent(status, forKey: "Status")
        try values.encodeIfPresent(thumbImageItemID, forKey: "ThumbImageItemId")
        try values.encodeIfPresent(thumbImageTag, forKey: "ThumbImageTag")
        try values.encodeIfPresent(type, forKey: "Type")
    }
}
