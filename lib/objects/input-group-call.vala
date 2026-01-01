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
 * Describes a non-joined group call that isn't bound to a chat
 */
public abstract class TDLib.InputGroupCall : Error {}

/**
 * The group call is accessible through a link
 */
public class TDLib.InputGroupCallLink : InputGroupCall {

    /**
     * The link for the group call
     */
    public string link { get; construct set; }

    public InputGroupCallLink (
        string link
    ) {
        Object (
            link: link,
            tdlib_type: "inputGroupCallLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The group call is accessible through a message of the type
 * messageGroupCall
 */
public class TDLib.InputGroupCallMessage : InputGroupCall {

    /**
     * Identifier of the chat with the message
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message of the type messageGroupCall
     */
    public int64 message_id { get; construct set; }

    public InputGroupCallMessage (
        int64 chat_id,
        int64 message_id
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            tdlib_type: "inputGroupCallMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
