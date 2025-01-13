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
 * Toggles whether a gift is shown on the current user's profile page
 */
public class TDLib.ToggleGiftIsSaved : TDObject {

    /**
     * Identifier of the user that sent the gift
     */
    public int64 sender_user_id { get; construct set; }

    /**
     * Identifier of the message with the gift in the chat with the user
     */
    public int64 message_id { get; construct set; }

    /**
     * Pass true to display the gift on the user's profile page; pass false
     * to remove it from the profile page
     */
    public bool is_saved { get; construct set; }

    public ToggleGiftIsSaved (
        int64 sender_user_id,
        int64 message_id,
        bool is_saved
    ) {
        Object (
            sender_user_id: sender_user_id,
            message_id: message_id,
            is_saved: is_saved,
            tdlib_type: "toggleGiftIsSaved",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
