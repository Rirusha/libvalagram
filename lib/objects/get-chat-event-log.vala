/*
 * Copyright (C) 2024 Vladimir Vaskov
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
 * Returns a list of service actions taken by chat members and
 * administrators in the last 48 hours. Available only for supergroups
 * and channels. Requires administrator rights. Returns results in
 * reverse chronological order (i.e., in order of decreasing event_id)
 */
internal class TDLib.GetChatEventLog : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Search query by which to filter events
     */
    public string query { get; construct set; }

    /**
     * Identifier of an event from which to return results. Use 0 to get
     * results from the latest events
     */
    public int64 from_event_id { get; construct set; }

    /**
     * The maximum number of events to return; up to 100
     */
    public int32 limit { get; construct set; }

    /**
     * The types of events to return; pass null to get chat events of all
     * types
     */
    public ChatEventLogFilters filters { get; construct set; }

    /**
     * User identifiers by which to filter events. By default, events
     * relating to all users will be returned
     */
    public Gee.ArrayList<int64?> user_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public GetChatEventLog (
        int64 chat_id,
        string query,
        int64 from_event_id,
        int32 limit,
        ChatEventLogFilters filters,
        Gee.ArrayList<int64?> user_ids
    ) {
        Object (
            chat_id: chat_id,
            query: query,
            from_event_id: from_event_id,
            limit: limit,
            filters: filters,
            user_ids: user_ids,
            tdlib_type: "getChatEventLog",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
