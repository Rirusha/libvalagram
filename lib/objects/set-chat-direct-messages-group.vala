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
 * Changes direct messages group settings for a channel chat; requires
 * owner privileges in the chat
 */
public class TDLib.SetChatDirectMessagesGroup : TDObject {

    /**
     * Identifier of the channel chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * Pass true if the direct messages group is enabled for the channel
     * chat; pass false otherwise
     */
    public bool is_enabled { get; construct set; }

    /**
     * The new number of Telegram Stars that must be paid for each message
     * that is sent to the direct messages chat unless the sender is an
     * administrator of the channel chat;
     * 0-getOption("paid_message_star_count_max").
     * The channel will receive getOption("paid_message_earnings_per_mille")
     * Telegram Stars for each 1000 Telegram Stars paid for message sending.
     * Requires supergroupFullInfo.can_enable_paid_messages for positive
     * amounts
     */
    public int64 paid_message_star_count { get; construct set; }

    public SetChatDirectMessagesGroup (
        int64 chat_id,
        bool is_enabled,
        int64 paid_message_star_count
    ) {
        Object (
            chat_id: chat_id,
            is_enabled: is_enabled,
            paid_message_star_count: paid_message_star_count,
            tdlib_type: "setChatDirectMessagesGroup",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
