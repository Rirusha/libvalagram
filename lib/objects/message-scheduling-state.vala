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
 * Contains information about the time when a scheduled message will be
 * sent
 */
public abstract class TDLib.MessageSchedulingState : Error {}

/**
 * The message will be sent at the specified date
 */
public class TDLib.MessageSchedulingStateSendAtDate : MessageSchedulingState {

    /**
     * Point in time (Unix timestamp) when the message will be sent. The date
     * must be within 367 days in the future
     */
    public int32 send_date { get; construct set; }

    /**
     * Period after which the message will be sent again; in seconds; 0 if
     * never; for Telegram Premium users only; may be non-zero only in
     * {@link Client.send_message} and {@link Client.forward_messages} with
     * one message requests;
     * must be one of 0, 86400, 7 * 86400, 14 * 86400, 30 * 86400, 91 *
     * 86400, 182 * 86400, 365 * 86400, or additionally 60, or 300 in the
     * Test DC
     */
    public int32 repeat_period { get; construct set; }

    public MessageSchedulingStateSendAtDate (
        int32 send_date,
        int32 repeat_period
    ) {
        Object (
            send_date: send_date,
            repeat_period: repeat_period,
            tdlib_type: "messageSchedulingStateSendAtDate",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The message will be sent when the other user is online. Applicable to
 * private chats only and when the exact online status of the other user
 * is known
 */
public class TDLib.MessageSchedulingStateSendWhenOnline : MessageSchedulingState {

    public MessageSchedulingStateSendWhenOnline () {
        Object (
            tdlib_type: "messageSchedulingStateSendWhenOnline",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The message will be sent when the video in the message is converted
 * and optimized; can be used only by the server
 */
public class TDLib.MessageSchedulingStateSendWhenVideoProcessed : MessageSchedulingState {

    /**
     * Approximate point in time (Unix timestamp) when the message is
     * expected to be sent
     */
    public int32 send_date { get; construct set; }

    public MessageSchedulingStateSendWhenVideoProcessed (
        int32 send_date
    ) {
        Object (
            send_date: send_date,
            tdlib_type: "messageSchedulingStateSendWhenVideoProcessed",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
