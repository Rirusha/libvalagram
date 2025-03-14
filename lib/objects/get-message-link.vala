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
 * Returns an HTTPS link to a message in a chat. Available only if
 * messageProperties.can_get_link, or if
 * messageProperties.can_get_media_timestamp_links and a media timestamp
 * link is generated. This is an offline method
 */
public class TDLib.GetMessageLink : TDObject {

    /**
     * Identifier of the chat to which the message belongs
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message
     */
    public int64 message_id { get; construct set; }

    /**
     * If not 0, timestamp from which the video/audio/video note/voice
     * note/story playing must start, in seconds. The media can be in the
     * message content or in its link preview
     */
    public int32 media_timestamp { get; construct set; }

    /**
     * Pass true to create a link for the whole media album
     */
    public bool for_album { get; construct set; }

    /**
     * Pass true to create a link to the message as a channel post comment,
     * in a message thread, or a forum topic
     */
    public bool in_message_thread { get; construct set; }

    public GetMessageLink (
        int64 chat_id,
        int64 message_id,
        int32 media_timestamp,
        bool for_album,
        bool in_message_thread
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            media_timestamp: media_timestamp,
            for_album: for_album,
            in_message_thread: in_message_thread,
            tdlib_type: "getMessageLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
