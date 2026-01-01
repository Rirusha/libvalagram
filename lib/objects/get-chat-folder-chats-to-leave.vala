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
 * Returns identifiers of pinned or always included chats from a chat
 * folder, which are suggested to be left when the chat folder is deleted
 */
public class TDLib.GetChatFolderChatsToLeave : TDObject {

    /**
     * Chat folder identifier
     */
    public int32 chat_folder_id { get; construct set; }

    public GetChatFolderChatsToLeave (
        int32 chat_folder_id
    ) {
        Object (
            chat_folder_id: chat_folder_id,
            tdlib_type: "getChatFolderChatsToLeave",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
