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
 * Uses an invite link to add the current user to the chat if possible.
 * May return an error with a message "INVITE_REQUEST_SENT" if only a
 * join request was created
 */
internal class TDLib.JoinChatByInviteLink : TDObject {

    /**
     * Invite link to use
     */
    public string invite_link { get; construct set; }

    public JoinChatByInviteLink (
        string invite_link
    ) {
        Object (
            invite_link: invite_link,
            tdlib_type: "joinChatByInviteLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
