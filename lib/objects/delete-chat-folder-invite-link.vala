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
 * Deletes an invite link for a chat folder
 */
public class TDLib.DeleteChatFolderInviteLink : TDObject {

    /**
     * Chat folder identifier
     */
    public int32 chat_folder_id { get; construct set; }

    /**
     * Invite link to be deleted
     */
    public string invite_link { get; construct set; }

    public DeleteChatFolderInviteLink (
        int32 chat_folder_id,
        string invite_link
    ) {
        Object (
            chat_folder_id: chat_folder_id,
            invite_link: invite_link,
            tdlib_type: "deleteChatFolderInviteLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
