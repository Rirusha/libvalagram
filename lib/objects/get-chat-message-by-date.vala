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
 * Returns the last message sent in a chat no later than the specified
 * date. Returns a 404 error if such message doesn't exist
 */
internal class TDLib.GetChatMessageByDate : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Point in time (Unix timestamp) relative to which to search for
     * messages
     */
    public int32 date { get; construct set; }

    public GetChatMessageByDate (
        int64 chat_id,
        int32 date
    ) {
        Object (
            chat_id: chat_id,
            date: date,
            tdlib_type: "getChatMessageByDate",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
