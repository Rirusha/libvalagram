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
 * Returns a list of common group chats with a given user. Chats are
 * sorted by their type and creation date
 */
internal class TDLib.GetGroupsInCommon : TDObject {

    /**
     * User identifier
     */
    public int64 user_id { get; construct set; }

    /**
     * Chat identifier starting from which to return chats; use 0 for the
     * first request
     */
    public int64 offset_chat_id { get; construct set; }

    /**
     * The maximum number of chats to be returned; up to 100
     */
    public int32 limit { get; construct set; }

    public GetGroupsInCommon (
        int64 user_id,
        int64 offset_chat_id,
        int32 limit
    ) {
        Object (
            user_id: user_id,
            offset_chat_id: offset_chat_id,
            limit: limit,
            tdlib_type: "getGroupsInCommon",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
