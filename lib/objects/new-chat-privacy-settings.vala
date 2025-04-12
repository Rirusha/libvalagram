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
 * Contains privacy settings for chats with non-contacts
 */
public class TDLib.NewChatPrivacySettings : Error {

    /**
     * True, if non-contacts users are able to write first to the current
     * user. Telegram Premium subscribers are able to write first regardless
     * of this setting
     */
    public bool allow_new_chats_from_unknown_users { get; construct set; }

    /**
     * Number of Telegram Stars that must be paid for every incoming private
     * message by non-contacts; 0-getOption("paid_message_star_count_max").
     * If positive, then allow_new_chats_from_unknown_users must be true. The
     * current user will receive getOption("paid_message_earnings_per_mille")
     * Telegram Stars for each 1000 Telegram Stars paid for message sending.
     * Can be positive, only if getOption("can_enable_paid_messages") is true
     */
    public int64 incoming_paid_message_star_count { get; construct set; }

    public NewChatPrivacySettings (
        bool allow_new_chats_from_unknown_users,
        int64 incoming_paid_message_star_count
    ) {
        Object (
            allow_new_chats_from_unknown_users: allow_new_chats_from_unknown_users,
            incoming_paid_message_star_count: incoming_paid_message_star_count,
            tdlib_type: "newChatPrivacySettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
