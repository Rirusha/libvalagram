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
 * Returns found forum topics in a forum chat. This is a temporary method
 * for getting information about topic list from the server
 */
internal class TDLib.GetForumTopics : TDObject {

    /**
     * Identifier of the forum chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * Query to search for in the forum topic's name
     */
    public string query { get; construct set; }

    /**
     * The date starting from which the results need to be fetched. Use 0 or
     * any date in the future to get results from the last topic
     */
    public int32 offset_date { get; construct set; }

    /**
     * The message identifier of the last message in the last found topic, or
     * 0 for the first request
     */
    public int64 offset_message_id { get; construct set; }

    /**
     * The message thread identifier of the last found topic, or 0 for the
     * first request
     */
    public int64 offset_message_thread_id { get; construct set; }

    /**
     * The maximum number of forum topics to be returned; up to 100. For
     * optimal performance, the number of returned forum topics is chosen by
     * TDLib and can be smaller than the specified limit
     */
    public int32 limit { get; construct set; }

    public GetForumTopics (
        int64 chat_id,
        string query,
        int32 offset_date,
        int64 offset_message_id,
        int64 offset_message_thread_id,
        int32 limit
    ) {
        Object (
            chat_id: chat_id,
            query: query,
            offset_date: offset_date,
            offset_message_id: offset_message_id,
            offset_message_thread_id: offset_message_thread_id,
            limit: limit,
            tdlib_type: "getForumTopics",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
