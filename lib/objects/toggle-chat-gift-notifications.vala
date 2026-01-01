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
 * Toggles whether notifications for new gifts received by a channel chat
 * are sent to the current user; requires can_post_messages administrator
 * right in the chat
 */
public class TDLib.ToggleChatGiftNotifications : TDObject {

    /**
     * Identifier of the channel chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * Pass true to enable notifications about new gifts owned by the channel
     * chat; pass false to disable the notifications
     */
    public bool are_enabled { get; construct set; }

    public ToggleChatGiftNotifications (
        int64 chat_id,
        bool are_enabled
    ) {
        Object (
            chat_id: chat_id,
            are_enabled: are_enabled,
            tdlib_type: "toggleChatGiftNotifications",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
