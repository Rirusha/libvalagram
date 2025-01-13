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
 * Returns information about messages. If a message is not found, returns
 * null on the corresponding position of the result
 */
internal class TDLib.GetMessages : TDObject {

    /**
     * Identifier of the chat the messages belong to
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifiers of the messages to get
     */
    public Gee.ArrayList<int64?> message_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public GetMessages (
        int64 chat_id,
        Gee.ArrayList<int64?> message_ids
    ) {
        Object (
            chat_id: chat_id,
            message_ids: message_ids,
            tdlib_type: "getMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
