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
 * Changes the owner of a chat; requires owner privileges in the chat.
 * Use the method {@link Client.can_transfer_ownership} to check whether
 * the ownership can be transferred from the current session. Available
 * only for supergroups and channel chats
 */
public class TDLib.TransferChatOwnership : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the user to which transfer the ownership. The ownership
     * can't be transferred to a bot or to a deleted user
     */
    public int64 user_id { get; construct set; }

    /**
     * The 2-step verification password of the current user
     */
    public string password { get; construct set; }

    public TransferChatOwnership (
        int64 chat_id,
        int64 user_id,
        string password
    ) {
        Object (
            chat_id: chat_id,
            user_id: user_id,
            password: password,
            tdlib_type: "transferChatOwnership",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
