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
 * Creates a new basic group and sends a corresponding
 * messageBasicGroupChatCreate. Returns information about the newly
 * created chat
 */
internal class TDLib.CreateNewBasicGroupChat : TDObject {

    /**
     * Identifiers of users to be added to the basic group; may be empty to
     * create a basic group without other members
     */
    public Gee.ArrayList<int64?> user_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    /**
     * Title of the new basic group; 1-128 characters
     */
    public string title { get; construct set; }

    /**
     * Message auto-delete time value, in seconds; must be from 0 up to 365 *
     * 86400 and be divisible by 86400. If 0, then messages aren't deleted
     * automatically
     */
    public int32 message_auto_delete_time { get; construct set; }

    public CreateNewBasicGroupChat (
        Gee.ArrayList<int64?> user_ids,
        string title,
        int32 message_auto_delete_time
    ) {
        Object (
            user_ids: user_ids,
            title: title,
            message_auto_delete_time: message_auto_delete_time,
            tdlib_type: "createNewBasicGroupChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
