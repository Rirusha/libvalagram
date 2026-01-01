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
 * Changes the order of pinned topics in a forum supergroup chat or a
 * chat with a bot with topics; requires can_manage_topics administrator
 * right in the supergroup
 */
public class TDLib.SetPinnedForumTopics : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The new list of identifiers of the pinned forum topics
     */
    public Gee.ArrayList<int32?> forum_topic_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public SetPinnedForumTopics (
        int64 chat_id,
        Gee.ArrayList<int32?> forum_topic_ids
    ) {
        Object (
            chat_id: chat_id,
            forum_topic_ids: forum_topic_ids,
            tdlib_type: "setPinnedForumTopics",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
