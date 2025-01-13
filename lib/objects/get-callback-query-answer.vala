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
 * Sends a callback query to a bot and returns an answer. Returns an
 * error with code 502 if the bot fails to answer the query before the
 * query timeout expires
 */
internal class TDLib.GetCallbackQueryAnswer : TDObject {

    /**
     * Identifier of the chat with the message
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message from which the query originated. The message
     * must not be scheduled
     */
    public int64 message_id { get; construct set; }

    /**
     * Query payload
     */
    public CallbackQueryPayload payload { get; construct set; }

    public GetCallbackQueryAnswer (
        int64 chat_id,
        int64 message_id,
        CallbackQueryPayload payload
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            payload: payload,
            tdlib_type: "getCallbackQueryAnswer",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
