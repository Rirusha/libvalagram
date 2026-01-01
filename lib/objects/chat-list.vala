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
 * Describes a list of chats
 */
public abstract class TDLib.ChatList : Error {}

/**
 * A main list of chats
 */
public class TDLib.ChatListMain : ChatList {

    public ChatListMain () {
        Object (
            tdlib_type: "chatListMain",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A list of chats usually located at the top of the main chat list.
 * Unmuted chats are automatically moved from the Archive to the Main
 * chat list when a new message arrives
 */
public class TDLib.ChatListArchive : ChatList {

    public ChatListArchive () {
        Object (
            tdlib_type: "chatListArchive",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A list of chats added to a chat folder
 */
public class TDLib.ChatListFolder : ChatList {

    /**
     * Chat folder identifier
     */
    public int32 chat_folder_id { get; construct set; }

    public ChatListFolder (
        int32 chat_folder_id
    ) {
        Object (
            chat_folder_id: chat_folder_id,
            tdlib_type: "chatListFolder",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
