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
 * Returns information about a message with the callback button that
 * originated a callback query; for bots only
 */
public class TDLib.GetCallbackQueryMessage : TDObject {

    /**
     * Identifier of the chat the message belongs to
     */
    public int64 chat_id { get; construct set; }

    /**
     * Message identifier
     */
    public int64 message_id { get; construct set; }

    /**
     * Identifier of the callback query
     */
    public int64 callback_query_id { get; construct set; }

    public GetCallbackQueryMessage (
        int64 chat_id,
        int64 message_id,
        int64 callback_query_id
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            callback_query_id: callback_query_id,
            tdlib_type: "getCallbackQueryMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
