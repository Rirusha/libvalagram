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
 * Returns an HTTPS link to a topic in a forum chat. This is an offline
 * method
 */
public class TDLib.GetForumTopicLink : TDObject {

    /**
     * Identifier of the chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * Message thread identifier of the forum topic
     */
    public int64 message_thread_id { get; construct set; }

    public GetForumTopicLink (
        int64 chat_id,
        int64 message_thread_id
    ) {
        Object (
            chat_id: chat_id,
            message_thread_id: message_thread_id,
            tdlib_type: "getForumTopicLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
