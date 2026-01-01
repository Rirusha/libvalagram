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
 * Returns information about an invite link. Requires administrator
 * privileges and can_invite_users right in the chat to get own links and
 * owner privileges to get other links
 */
public class TDLib.GetChatInviteLink : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Invite link to get
     */
    public string invite_link { get; construct set; }

    public GetChatInviteLink (
        int64 chat_id,
        string invite_link
    ) {
        Object (
            chat_id: chat_id,
            invite_link: invite_link,
            tdlib_type: "getChatInviteLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
