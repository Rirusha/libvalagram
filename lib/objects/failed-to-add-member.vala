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
 * Contains information about a user that has failed to be added to a
 * chat
 */
public class TDLib.FailedToAddMember : Error {

    /**
     * User identifier
     */
    public int64 user_id { get; construct set; }

    /**
     * True, if subscription to Telegram Premium would have allowed to add
     * the user to the chat
     */
    public bool premium_would_allow_invite { get; construct set; }

    /**
     * True, if subscription to Telegram Premium is required to send the user
     * chat invite link
     */
    public bool premium_required_to_send_messages { get; construct set; }

    public FailedToAddMember (
        int64 user_id,
        bool premium_would_allow_invite,
        bool premium_required_to_send_messages
    ) {
        Object (
            user_id: user_id,
            premium_would_allow_invite: premium_would_allow_invite,
            premium_required_to_send_messages: premium_required_to_send_messages,
            tdlib_type: "failedToAddMember",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
