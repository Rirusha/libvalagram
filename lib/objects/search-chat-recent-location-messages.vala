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
 * Returns information about the recent locations of chat members that
 * were sent to the chat. Returns up to 1 location message per user
 */
internal class TDLib.SearchChatRecentLocationMessages : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The maximum number of messages to be returned
     */
    public int32 limit { get; construct set; }

    public SearchChatRecentLocationMessages (
        int64 chat_id,
        int32 limit
    ) {
        Object (
            chat_id: chat_id,
            limit: limit,
            tdlib_type: "searchChatRecentLocationMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
