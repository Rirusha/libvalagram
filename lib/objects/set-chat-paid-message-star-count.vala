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
 * Changes the amount of Telegram Stars that must be paid to send a
 * message to a supergroup chat; requires can_restrict_members
 * administrator right and supergroupFullInfo.can_enable_paid_messages
 */
public class TDLib.SetChatPaidMessageStarCount : TDObject {

    /**
     * Identifier of the supergroup chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * The new number of Telegram Stars that must be paid for each message
     * that is sent to the supergroup chat unless the sender is an
     * administrator of the chat; 0-getOption("paid_message_star_count_max").
     * The supergroup will receive
     * getOption("paid_message_earnings_per_mille") Telegram Stars for each
     * 1000 Telegram Stars paid for message sending
     */
    public int64 paid_message_star_count { get; construct set; }

    public SetChatPaidMessageStarCount (
        int64 chat_id,
        int64 paid_message_star_count
    ) {
        Object (
            chat_id: chat_id,
            paid_message_star_count: paid_message_star_count,
            tdlib_type: "setChatPaidMessageStarCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
