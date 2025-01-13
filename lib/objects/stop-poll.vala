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
 * Stops a poll
 */
public class TDLib.StopPoll : TDObject {

    /**
     * Identifier of the chat to which the poll belongs
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message containing the poll. Use
     * messageProperties.can_be_edited to check whether the poll can be
     * stopped
     */
    public int64 message_id { get; construct set; }

    /**
     * The new message reply markup; pass null if none; for bots only
     */
    public ReplyMarkup reply_markup { get; construct set; }

    public StopPoll (
        int64 chat_id,
        int64 message_id,
        ReplyMarkup reply_markup
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            reply_markup: reply_markup,
            tdlib_type: "stopPoll",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
