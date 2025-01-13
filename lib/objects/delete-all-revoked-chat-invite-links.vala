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
 * Deletes all revoked chat invite links created by a given chat
 * administrator. Requires administrator privileges and can_invite_users
 * right in the chat for own links and owner privileges for other links
 */
internal class TDLib.DeleteAllRevokedChatInviteLinks : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * User identifier of a chat administrator, which links will be deleted.
     * Must be an identifier of the current user for non-owner
     */
    public int64 creator_user_id { get; construct set; }

    public DeleteAllRevokedChatInviteLinks (
        int64 chat_id,
        int64 creator_user_id
    ) {
        Object (
            chat_id: chat_id,
            creator_user_id: creator_user_id,
            tdlib_type: "deleteAllRevokedChatInviteLinks",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
