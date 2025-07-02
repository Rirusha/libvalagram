/*
 * Copyright (C) 2024-2025 Vladimir Vaskov
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <https://www.gnu.org/licenses/>.
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

// THIS FILE WAS GENERATED, DON'T MODIFY IT

/**
 * Describes an advertisent to be shown while a video from a message is
 * watched
 */
public class TDLib.VideoMessageAdvertisement : Error {

    /**
     * Unique identifier of this result
     */
    public int64 unique_id { get; construct set; }

    /**
     * Text of the advertisement
     */
    public string text { get; construct set; }

    /**
     * The minimum amount of time the advertisement must be dispalyed before
     * it can be hidden by the user, in seconds
     */
    public int32 min_display_duration { get; construct set; }

    /**
     * The maximum amount of time the advertisement must be dispalyed before
     * it must be automatically hidden, in seconds
     */
    public int32 max_display_duration { get; construct set; }

    /**
     * True, if the advertisement can be reported to Telegram moderators
     * through {@link Client.report_video_message_advertisement}
     */
    public bool can_be_reported { get; construct set; }

    /**
     * Information about the sponsor of the advertisement
     */
    public AdvertisementSponsor sponsor { get; construct set; }

    /**
     * Title of the sponsored message
     */
    public string title { get; construct set; }

    /**
     * If non-empty, additional information about the sponsored message to be
     * shown along with the message
     */
    public string additional_info { get; construct set; }

    public VideoMessageAdvertisement (
        int64 unique_id,
        string text,
        int32 min_display_duration,
        int32 max_display_duration,
        bool can_be_reported,
        AdvertisementSponsor sponsor,
        string title,
        string additional_info
    ) {
        Object (
            unique_id: unique_id,
            text: text,
            min_display_duration: min_display_duration,
            max_display_duration: max_display_duration,
            can_be_reported: can_be_reported,
            sponsor: sponsor,
            title: title,
            additional_info: additional_info,
            tdlib_type: "videoMessageAdvertisement",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
