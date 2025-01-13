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
 * Changes the user answer to a poll. A poll in quiz mode can be answered
 * only once
 */
public class TDLib.SetPollAnswer : TDObject {

    /**
     * Identifier of the chat to which the poll belongs
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message containing the poll
     */
    public int64 message_id { get; construct set; }

    /**
     * 0-based identifiers of answer options, chosen by the user. User can
     * choose more than 1 answer option only is the poll allows multiple
     * answers
     */
    public Gee.ArrayList<int32?> option_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public SetPollAnswer (
        int64 chat_id,
        int64 message_id,
        Gee.ArrayList<int32?> option_ids
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            option_ids: option_ids,
            tdlib_type: "setPollAnswer",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
