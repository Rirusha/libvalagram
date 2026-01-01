/*
 * Copyright (C) 2024-2026 Vladimir Vaskov
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
 * Returns forwarded copies of a channel message to different public
 * channels and public reposts as a story. Can be used only if
 * messageProperties.can_get_statistics == true. For optimal performance,
 * the number of returned messages and stories is chosen by TDLib
 */
public class TDLib.GetMessagePublicForwards : TDObject {

    /**
     * Chat identifier of the message
     */
    public int64 chat_id { get; construct set; }

    /**
     * Message identifier
     */
    public int64 message_id { get; construct set; }

    /**
     * Offset of the first entry to return as received from the previous
     * request; use empty string to get the first chunk of results
     */
    public string offset { get; construct set; }

    /**
     * The maximum number of messages and stories to be returned; must be
     * positive and can't be greater than 100. For optimal performance, the
     * number of returned objects is chosen by TDLib and can be smaller than
     * the specified limit
     */
    public int32 limit { get; construct set; }

    public GetMessagePublicForwards (
        int64 chat_id,
        int64 message_id,
        string offset,
        int32 limit
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            offset: offset,
            limit: limit,
            tdlib_type: "getMessagePublicForwards",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
