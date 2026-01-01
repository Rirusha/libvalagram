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
 * Contains a list of messages found by a public post search
 */
public class TDLib.FoundPublicPosts : Error {

    /**
     * List of found public posts
     */
    public Gee.ArrayList<Message?> messages { get; construct set; default = new Gee.ArrayList<Message?> (); }

    /**
     * The offset for the next request. If empty, then there are no more
     * results
     */
    public string next_offset { get; construct set; }

    /**
     * Updated public post search limits after the query; repeated requests
     * with the same query will be free; may be null if they didn't change
     */
    public PublicPostSearchLimits? search_limits { get; construct set; }

    /**
     * True, if the query has failed because search limits are exceeded. In
     * this case search_limits.daily_free_query_count will be equal to 0
     */
    public bool are_limits_exceeded { get; construct set; }

    public FoundPublicPosts (
        Gee.ArrayList<Message?> messages,
        string next_offset,
        PublicPostSearchLimits? search_limits,
        bool are_limits_exceeded
    ) {
        Object (
            messages: messages,
            next_offset: next_offset,
            search_limits: search_limits,
            are_limits_exceeded: are_limits_exceeded,
            tdlib_type: "foundPublicPosts",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
