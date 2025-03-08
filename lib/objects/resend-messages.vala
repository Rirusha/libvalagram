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
 * Resends messages which failed to send. Can be called only for messages
 * for which messageSendingStateFailed.can_retry is true and after
 * specified in messageSendingStateFailed.retry_after time passed.
 * If a message is re-sent, the corresponding failed to send message is
 * deleted. Returns the sent messages in the same order as the message
 * identifiers passed in message_ids. If a message can't be re-sent, null
 * will be returned instead of the message
 */
public class TDLib.ResendMessages : TDObject {

    /**
     * Identifier of the chat to send messages
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifiers of the messages to resend. Message identifiers must be in
     * a strictly increasing order
     */
    public Gee.ArrayList<int64?> message_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    /**
     * New manually chosen quote from the message to be replied; pass null if
     * none. Ignored if more than one message is re-sent, or if
     * messageSendingStateFailed.need_another_reply_quote == false
     */
    public InputTextQuote quote { get; construct set; }

    /**
     * The number of Telegram Stars the user agreed to pay to send the
     * messages. Ignored if
     * messageSendingStateFailed.required_paid_message_star_count == 0
     */
    public int64 paid_message_star_count { get; construct set; }

    public ResendMessages (
        int64 chat_id,
        Gee.ArrayList<int64?> message_ids,
        InputTextQuote quote,
        int64 paid_message_star_count
    ) {
        Object (
            chat_id: chat_id,
            message_ids: message_ids,
            quote: quote,
            paid_message_star_count: paid_message_star_count,
            tdlib_type: "resendMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
