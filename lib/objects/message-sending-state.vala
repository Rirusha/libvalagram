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
 * Contains information about the sending state of the message
 */
public abstract class TDLib.MessageSendingState : Error {}

/**
 * The message is being sent now, but has not yet been delivered to the
 * server
 */
public class TDLib.MessageSendingStatePending : MessageSendingState {

    /**
     * Non-persistent message sending identifier, specified by the
     * application
     */
    public int32 sending_id { get; construct set; }

    public MessageSendingStatePending (
        int32 sending_id
    ) {
        Object (
            sending_id: sending_id,
            tdlib_type: "messageSendingStatePending",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The message failed to be sent
 */
public class TDLib.MessageSendingStateFailed : MessageSendingState {

    /**
     * The cause of the message sending failure
     */
    public Error error { get; construct set; }

    /**
     * True, if the message can be re-sent using
     * {@link Client.resend_messages} or
     * {@link Client.readd_quick_reply_shortcut_messages}
     */
    public bool can_retry { get; construct set; }

    /**
     * True, if the message can be re-sent only on behalf of a different
     * sender
     */
    public bool need_another_sender { get; construct set; }

    /**
     * True, if the message can be re-sent only if another quote is chosen in
     * the message that is replied by the given message
     */
    public bool need_another_reply_quote { get; construct set; }

    /**
     * True, if the message can be re-sent only if the message to be replied
     * is removed. This will be done automatically by
     * {@link Client.resend_messages}
     */
    public bool need_drop_reply { get; construct set; }

    /**
     * The number of Telegram Stars that must be paid to send the message; 0
     * if the current amount is correct
     */
    public int64 required_paid_message_star_count { get; construct set; }

    /**
     * Time left before the message can be re-sent, in seconds. No update is
     * sent when this field changes
     */
    public double retry_after { get; construct set; }

    public MessageSendingStateFailed (
        Error error,
        bool can_retry,
        bool need_another_sender,
        bool need_another_reply_quote,
        bool need_drop_reply,
        int64 required_paid_message_star_count,
        double retry_after
    ) {
        Object (
            error: error,
            can_retry: can_retry,
            need_another_sender: need_another_sender,
            need_another_reply_quote: need_another_reply_quote,
            need_drop_reply: need_drop_reply,
            required_paid_message_star_count: required_paid_message_star_count,
            retry_after: retry_after,
            tdlib_type: "messageSendingStateFailed",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
