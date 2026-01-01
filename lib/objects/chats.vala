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
 * Represents a list of chats
 */
public class TDLib.Chats : Error {

    /**
     * Approximate total number of chats found
     */
    public int32 total_count { get; construct set; }

    /**
     * List of chat identifiers
     */
    public Gee.ArrayList<int64?> chat_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public Chats (
        int32 total_count,
        Gee.ArrayList<int64?> chat_ids
    ) {
        Object (
            total_count: total_count,
            chat_ids: chat_ids,
            tdlib_type: "chats",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
