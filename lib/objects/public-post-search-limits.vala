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
 * Contains information about public post search limits
 */
public class TDLib.PublicPostSearchLimits : Error {

    /**
     * Number of queries that can be sent daily for free
     */
    public int32 daily_free_query_count { get; construct set; }

    /**
     * Number of remaining free queries today
     */
    public int32 remaining_free_query_count { get; construct set; }

    /**
     * Amount of time till the next free query can be sent; 0 if it can be
     * sent now
     */
    public int32 next_free_query_in { get; construct set; }

    /**
     * Number of Telegram Stars that must be paid for each non-free query
     */
    public int64 star_count { get; construct set; }

    /**
     * True, if the search for the specified query isn't charged
     */
    public bool is_current_query_free { get; construct set; }

    public PublicPostSearchLimits (
        int32 daily_free_query_count,
        int32 remaining_free_query_count,
        int32 next_free_query_in,
        int64 star_count,
        bool is_current_query_free
    ) {
        Object (
            daily_free_query_count: daily_free_query_count,
            remaining_free_query_count: remaining_free_query_count,
            next_free_query_in: next_free_query_in,
            star_count: star_count,
            is_current_query_free: is_current_query_free,
            tdlib_type: "publicPostSearchLimits",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
