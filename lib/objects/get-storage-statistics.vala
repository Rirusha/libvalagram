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
 * Returns storage usage statistics. Can be called before authorization
 */
internal class TDLib.GetStorageStatistics : TDObject {

    /**
     * The maximum number of chats with the largest storage usage for which
     * separate statistics need to be returned. All other chats will be
     * grouped in entries with chat_id == 0. If the chat info database is not
     * used, the chat_limit is ignored and is always set to 0
     */
    public int32 chat_limit { get; construct set; }

    public GetStorageStatistics (
        int32 chat_limit
    ) {
        Object (
            chat_limit: chat_limit,
            tdlib_type: "getStorageStatistics",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
