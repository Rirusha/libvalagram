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
 * Edits an invite link for a chat folder
 */
public class TDLib.EditChatFolderInviteLink : TDObject {

    /**
     * Chat folder identifier
     */
    public int32 chat_folder_id { get; construct set; }

    /**
     * Invite link to be edited
     */
    public string invite_link { get; construct set; }

    /**
     * New name of the link; 0-32 characters
     */
    public string name { get; construct set; }

    /**
     * New identifiers of chats to be accessible by the invite link. Use
     * {@link Client.get_chats_for_chat_folder_invite_link} to get suitable
     * chats. Basic groups will be automatically converted to supergroups
     * before link editing
     */
    public Gee.ArrayList<int64?> chat_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public EditChatFolderInviteLink (
        int32 chat_folder_id,
        string invite_link,
        string name,
        Gee.ArrayList<int64?> chat_ids
    ) {
        Object (
            chat_folder_id: chat_folder_id,
            invite_link: invite_link,
            name: name,
            chat_ids: chat_ids,
            tdlib_type: "editChatFolderInviteLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
