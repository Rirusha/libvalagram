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
 * Returns a list of frequently used chats
 */
internal class TDLib.GetTopChats : TDObject {

    /**
     * Category of chats to be returned
     */
    public TopChatCategory category { get; construct set; }

    /**
     * The maximum number of chats to be returned; up to 30
     */
    public int32 limit { get; construct set; }

    public GetTopChats (
        TopChatCategory category,
        int32 limit
    ) {
        Object (
            category: category,
            limit: limit,
            tdlib_type: "getTopChats",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
