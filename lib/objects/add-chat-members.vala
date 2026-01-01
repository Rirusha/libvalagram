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
 * Adds multiple new members to a chat; requires can_invite_users member
 * right. Currently, this method is only available for supergroups and
 * channels.
 * This method can't be used to join a chat. Members can't be added to a
 * channel if it has more than 200 members. Returns information about
 * members that weren't added
 */
public class TDLib.AddChatMembers : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifiers of the users to be added to the chat. The maximum number
     * of added users is 20 for supergroups and 100 for channels
     */
    public Gee.ArrayList<int64?> user_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public AddChatMembers (
        int64 chat_id,
        Gee.ArrayList<int64?> user_ids
    ) {
        Object (
            chat_id: chat_id,
            user_ids: user_ids,
            tdlib_type: "addChatMembers",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
