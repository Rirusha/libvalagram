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
 * Searches for call messages. Returns the results in reverse
 * chronological order (i.e., in order of decreasing message_id). For
 * optimal performance, the number of returned messages is chosen by
 * TDLib
 */
internal class TDLib.SearchCallMessages : TDObject {

    /**
     * Offset of the first entry to return as received from the previous
     * request; use empty string to get the first chunk of results
     */
    public string offset { get; construct set; }

    /**
     * The maximum number of messages to be returned; up to 100. For optimal
     * performance, the number of returned messages is chosen by TDLib and
     * can be smaller than the specified limit
     */
    public int32 limit { get; construct set; }

    /**
     * Pass true to search only for messages with missed/declined calls
     */
    public bool only_missed { get; construct set; }

    public SearchCallMessages (
        string offset,
        int32 limit,
        bool only_missed
    ) {
        Object (
            offset: offset,
            limit: limit,
            only_missed: only_missed,
            tdlib_type: "searchCallMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
