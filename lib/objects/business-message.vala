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
 * Describes a message from a business account as received by a bot
 */
public class TDLib.BusinessMessage : Error {

    /**
     * The message
     */
    public new Message message { get; construct set; }

    /**
     * Message that is replied by the message in the same chat; may be null
     * if none
     */
    public Message? reply_to_message { get; construct set; }

    public BusinessMessage (
        Message message,
        Message? reply_to_message
    ) {
        Object (
            message: message,
            reply_to_message: reply_to_message,
            tdlib_type: "businessMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
