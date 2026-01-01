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
 * Toggles whether a topic is closed in a forum supergroup chat; requires
 * can_manage_topics administrator right in the supergroup unless the
 * user is creator of the topic
 */
public class TDLib.ToggleForumTopicIsClosed : TDObject {

    /**
     * Identifier of the chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * Forum topic identifier
     */
    public int32 forum_topic_id { get; construct set; }

    /**
     * Pass true to {@link Client.close} the topic; pass false to reopen it
     */
    public bool is_closed { get; construct set; }

    public ToggleForumTopicIsClosed (
        int64 chat_id,
        int32 forum_topic_id,
        bool is_closed
    ) {
        Object (
            chat_id: chat_id,
            forum_topic_id: forum_topic_id,
            is_closed: is_closed,
            tdlib_type: "toggleForumTopicIsClosed",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
