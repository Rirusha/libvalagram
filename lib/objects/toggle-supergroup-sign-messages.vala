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
 * Toggles whether sender signature or link to the account is added to
 * sent messages in a channel; requires can_change_info member right
 */
public class TDLib.ToggleSupergroupSignMessages : TDObject {

    /**
     * Identifier of the channel
     */
    public int64 supergroup_id { get; construct set; }

    /**
     * New value of sign_messages
     */
    public bool sign_messages { get; construct set; }

    /**
     * New value of show_message_sender
     */
    public bool show_message_sender { get; construct set; }

    public ToggleSupergroupSignMessages (
        int64 supergroup_id,
        bool sign_messages,
        bool show_message_sender
    ) {
        Object (
            supergroup_id: supergroup_id,
            sign_messages: sign_messages,
            show_message_sender: show_message_sender,
            tdlib_type: "toggleSupergroupSignMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
