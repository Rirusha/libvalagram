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
 * Returns users and chats that were blocked by the current user
 */
public class TDLib.GetBlockedMessageSenders : TDObject {

    /**
     * Block list from which to return users
     */
    public BlockList block_list { get; construct set; }

    /**
     * Number of users and chats to skip in the result; must be non-negative
     */
    public int32 offset { get; construct set; }

    /**
     * The maximum number of users and chats to return; up to 100
     */
    public int32 limit { get; construct set; }

    public GetBlockedMessageSenders (
        BlockList block_list,
        int32 offset,
        int32 limit
    ) {
        Object (
            block_list: block_list,
            offset: offset,
            limit: limit,
            tdlib_type: "getBlockedMessageSenders",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
