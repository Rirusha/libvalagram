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
 * Checks the validity of an invite link for a chat folder and returns
 * information about the corresponding chat folder
 */
public class TDLib.CheckChatFolderInviteLink : TDObject {

    /**
     * Invite link to be checked
     */
    public string invite_link { get; construct set; }

    public CheckChatFolderInviteLink (
        string invite_link
    ) {
        Object (
            invite_link: invite_link,
            tdlib_type: "checkChatFolderInviteLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
