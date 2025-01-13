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
 * Shares users after pressing a keyboardButtonTypeRequestUsers button
 * with the bot
 */
public class TDLib.ShareUsersWithBot : TDObject {

    /**
     * Identifier of the chat with the bot
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message with the button
     */
    public int64 message_id { get; construct set; }

    /**
     * Identifier of the button
     */
    public int32 button_id { get; construct set; }

    /**
     * Identifiers of the shared users
     */
    public Gee.ArrayList<int64?> shared_user_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    /**
     * Pass true to check that the users can be shared by the button instead
     * of actually sharing them
     */
    public bool only_check { get; construct set; }

    public ShareUsersWithBot (
        int64 chat_id,
        int64 message_id,
        int32 button_id,
        Gee.ArrayList<int64?> shared_user_ids,
        bool only_check
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            button_id: button_id,
            shared_user_ids: shared_user_ids,
            only_check: only_check,
            tdlib_type: "shareUsersWithBot",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
