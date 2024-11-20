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
 * Contains information about an invite link to a chat folder
 */
public class TDLib.ChatFolderInviteLinkInfo : Error {

    /**
     * Basic information about the chat folder; chat folder identifier will
     * be 0 if the user didn't have the chat folder yet
     */
    public ChatFolderInfo chat_folder_info { get; construct set; }

    /**
     * Identifiers of the chats from the link, which aren't added to the
     * folder yet
     */
    public Gee.ArrayList<int64?> missing_chat_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    /**
     * Identifiers of the chats from the link, which are added to the folder
     * already
     */
    public Gee.ArrayList<int64?> added_chat_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public ChatFolderInviteLinkInfo (
        ChatFolderInfo chat_folder_info,
        Gee.ArrayList<int64?> missing_chat_ids,
        Gee.ArrayList<int64?> added_chat_ids
    ) {
        Object (
            chat_folder_info: chat_folder_info,
            missing_chat_ids: missing_chat_ids,
            added_chat_ids: added_chat_ids,
            tdlib_type: "chatFolderInviteLinkInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
