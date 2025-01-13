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
 * Changes the block list of a message sender. Currently, only users and
 * supergroup chats can be blocked
 */
public class TDLib.SetMessageSenderBlockList : TDObject {

    /**
     * Identifier of a message sender to block/unblock
     */
    public MessageSender sender_id { get; construct set; }

    /**
     * New block list for the message sender; pass null to unblock the
     * message sender
     */
    public BlockList block_list { get; construct set; }

    public SetMessageSenderBlockList (
        MessageSender sender_id,
        BlockList block_list
    ) {
        Object (
            sender_id: sender_id,
            block_list: block_list,
            tdlib_type: "setMessageSenderBlockList",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
