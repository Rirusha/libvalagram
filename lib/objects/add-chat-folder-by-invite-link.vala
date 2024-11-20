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
 * Adds a chat folder by an invite link
 */
internal class TDLib.AddChatFolderByInviteLink : TDObject {

    /**
     * Invite link for the chat folder
     */
    public string invite_link { get; construct set; }

    /**
     * Identifiers of the chats added to the chat folder. The chats are
     * automatically joined if they aren't joined yet
     */
    public Gee.ArrayList<int64?> chat_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public AddChatFolderByInviteLink (
        string invite_link,
        Gee.ArrayList<int64?> chat_ids
    ) {
        Object (
            invite_link: invite_link,
            chat_ids: chat_ids,
            tdlib_type: "addChatFolderByInviteLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
