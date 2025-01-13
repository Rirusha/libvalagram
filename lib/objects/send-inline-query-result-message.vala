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
 * Sends the result of an inline query as a message. Returns the sent
 * message. Always clears a chat draft message
 */
internal class TDLib.SendInlineQueryResultMessage : TDObject {

    /**
     * Target chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * If not 0, the message thread identifier in which the message will be
     * sent
     */
    public int64 message_thread_id { get; construct set; }

    /**
     * Information about the message or story to be replied; pass null if
     * none
     */
    public InputMessageReplyTo reply_to { get; construct set; }

    /**
     * Options to be used to send the message; pass null to use default
     * options
     */
    public MessageSendOptions options { get; construct set; }

    /**
     * Identifier of the inline query
     */
    public int64 query_id { get; construct set; }

    /**
     * Identifier of the inline query result
     */
    public string result_id { get; construct set; }

    /**
     * Pass true to hide the bot, via which the message is sent. Can be used
     * only for bots getOption("animation_search_bot_username"),
     * getOption("photo_search_bot_username"), and
     * getOption("venue_search_bot_username")
     */
    public bool hide_via_bot { get; construct set; }

    public SendInlineQueryResultMessage (
        int64 chat_id,
        int64 message_thread_id,
        InputMessageReplyTo reply_to,
        MessageSendOptions options,
        int64 query_id,
        string result_id,
        bool hide_via_bot
    ) {
        Object (
            chat_id: chat_id,
            message_thread_id: message_thread_id,
            reply_to: reply_to,
            options: options,
            query_id: query_id,
            result_id: result_id,
            hide_via_bot: hide_via_bot,
            tdlib_type: "sendInlineQueryResultMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
