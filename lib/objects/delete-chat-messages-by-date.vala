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
 * Deletes all messages between the specified dates in a chat. Supported
 * only for private chats and basic groups. Messages sent in the last 30
 * seconds will not be deleted
 */
public class TDLib.DeleteChatMessagesByDate : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The minimum date of the messages to delete
     */
    public int32 min_date { get; construct set; }

    /**
     * The maximum date of the messages to delete
     */
    public int32 max_date { get; construct set; }

    /**
     * Pass true to delete chat messages for all users; private chats only
     */
    public bool revoke { get; construct set; }

    public DeleteChatMessagesByDate (
        int64 chat_id,
        int32 min_date,
        int32 max_date,
        bool revoke
    ) {
        Object (
            chat_id: chat_id,
            min_date: min_date,
            max_date: max_date,
            revoke: revoke,
            tdlib_type: "deleteChatMessagesByDate",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
