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
 * Creates a new invite link for a chat folder. A link can be created for
 * a chat folder if it has only pinned and included chats
 */
internal class TDLib.CreateChatFolderInviteLink : TDObject {

    /**
     * Chat folder identifier
     */
    public int32 chat_folder_id { get; construct set; }

    /**
     * Name of the link; 0-32 characters
     */
    public string name { get; construct set; }

    /**
     * Identifiers of chats to be accessible by the invite link. Use
     * getChatsForChatFolderInviteLink to get suitable chats. Basic groups
     * will be automatically converted to supergroups before link creation
     */
    public Gee.ArrayList<int64?> chat_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public CreateChatFolderInviteLink (
        int32 chat_folder_id,
        string name,
        Gee.ArrayList<int64?> chat_ids
    ) {
        Object (
            chat_folder_id: chat_folder_id,
            name: name,
            chat_ids: chat_ids,
            tdlib_type: "createChatFolderInviteLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
