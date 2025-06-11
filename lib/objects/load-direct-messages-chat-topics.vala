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
 * Loads more topics in a channel direct messages chat administered by
 * the current user. The loaded topics will be sent through
 * updateDirectMessagesChatTopic.
 * Topics are sorted by their topic.order in descending order. Returns a
 * 404 error if all topics have been loaded
 */
public class TDLib.LoadDirectMessagesChatTopics : TDObject {

    /**
     * Chat identifier of the channel direct messages chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * The maximum number of topics to be loaded. For optimal performance,
     * the number of loaded topics is chosen by TDLib and can be smaller than
     * the specified limit, even if the end of the list is not reached
     */
    public int32 limit { get; construct set; }

    public LoadDirectMessagesChatTopics (
        int64 chat_id,
        int32 limit
    ) {
        Object (
            chat_id: chat_id,
            limit: limit,
            tdlib_type: "loadDirectMessagesChatTopics",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
