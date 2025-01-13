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
 * Contains a list of messages found by a search
 */
public class TDLib.FoundMessages : Error {

    /**
     * Approximate total number of messages found; -1 if unknown
     */
    public int32 total_count { get; construct set; }

    /**
     * List of messages
     */
    public Gee.ArrayList<Message?> messages { get; construct set; default = new Gee.ArrayList<Message?> (); }

    /**
     * The offset for the next request. If empty, then there are no more
     * results
     */
    public string next_offset { get; construct set; }

    public FoundMessages (
        int32 total_count,
        Gee.ArrayList<Message?> messages,
        string next_offset
    ) {
        Object (
            total_count: total_count,
            messages: messages,
            next_offset: next_offset,
            tdlib_type: "foundMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
