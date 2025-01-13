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
 * Process new chats added to a shareable chat folder by its owner
 */
public class TDLib.ProcessChatFolderNewChats : TDObject {

    /**
     * Chat folder identifier
     */
    public int32 chat_folder_id { get; construct set; }

    /**
     * Identifiers of the new chats, which are added to the chat folder. The
     * chats are automatically joined if they aren't joined yet
     */
    public Gee.ArrayList<int64?> added_chat_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public ProcessChatFolderNewChats (
        int32 chat_folder_id,
        Gee.ArrayList<int64?> added_chat_ids
    ) {
        Object (
            chat_folder_id: chat_folder_id,
            added_chat_ids: added_chat_ids,
            tdlib_type: "processChatFolderNewChats",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
