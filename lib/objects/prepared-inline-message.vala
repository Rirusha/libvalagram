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
 * Represents a ready to send inline message. Use
 * sendInlineQueryResultMessage to send the message
 */
public class TDLib.PreparedInlineMessage : Error {

    /**
     * Unique identifier of the inline query to pass to
     * sendInlineQueryResultMessage
     */
    public int64 inline_query_id { get; construct set; }

    /**
     * Resulted inline message of the query
     */
    public InlineQueryResult result { get; construct set; }

    /**
     * Types of the chats to which the message can be sent
     */
    public TargetChatTypes chat_types { get; construct set; }

    public PreparedInlineMessage (
        int64 inline_query_id,
        InlineQueryResult result,
        TargetChatTypes chat_types
    ) {
        Object (
            inline_query_id: inline_query_id,
            result: result,
            chat_types: chat_types,
            tdlib_type: "preparedInlineMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
