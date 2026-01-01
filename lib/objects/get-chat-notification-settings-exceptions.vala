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
 * Returns the list of chats with non-default notification settings for
 * new messages
 */
public class TDLib.GetChatNotificationSettingsExceptions : TDObject {

    /**
     * If specified, only chats from the scope will be returned; pass null to
     * return chats from all scopes
     */
    public NotificationSettingsScope scope { get; construct set; }

    /**
     * Pass true to include in the response chats with only non-default sound
     */
    public bool compare_sound { get; construct set; }

    public GetChatNotificationSettingsExceptions (
        NotificationSettingsScope scope,
        bool compare_sound
    ) {
        Object (
            scope: scope,
            compare_sound: compare_sound,
            tdlib_type: "getChatNotificationSettingsExceptions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
