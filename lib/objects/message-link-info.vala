/*
 * Copyright (C) 2024 Vladimir Vaskov
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
 * Contains information about a link to a message or a forum topic in a
 * chat
 */
public class TDLib.MessageLinkInfo : Error {

    /**
     * True, if the link is a public link for a message or a forum topic in a
     * chat
     */
    public bool is_public { get; construct set; }

    /**
     * If found, identifier of the chat to which the link points, 0 otherwise
     */
    public int64 chat_id { get; construct set; }

    /**
     * If found, identifier of the message thread in which to open the
     * message, or a forum topic to open if the message is missing
     */
    public int64 message_thread_id { get; construct set; }

    /**
     * If found, the linked message; may be null
     */
    public Message? message { get; construct set; }

    /**
     * Timestamp from which the video/audio/video note/voice note/story
     * playing must start, in seconds; 0 if not specified. The media can be
     * in the message content or in its link preview
     */
    public int32 media_timestamp { get; construct set; }

    /**
     * True, if the whole media album to which the message belongs is linked
     */
    public bool for_album { get; construct set; }

    public MessageLinkInfo (
        bool is_public,
        int64 chat_id,
        int64 message_thread_id,
        Message? message,
        int32 media_timestamp,
        bool for_album
    ) {
        Object (
            is_public: is_public,
            chat_id: chat_id,
            message_thread_id: message_thread_id,
            message: message,
            media_timestamp: media_timestamp,
            for_album: for_album,
            tdlib_type: "messageLinkInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
