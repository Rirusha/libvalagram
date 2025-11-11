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
 * Changes active state for a username of a bot. The editable username
 * can be disabled only if there are other active usernames.
 * May return an error with a message "USERNAMES_ACTIVE_TOO_MUCH" if the
 * maximum number of active usernames has been reached. Can be called
 * only if userTypeBot.can_be_edited == true
 */
public class TDLib.ToggleBotUsernameIsActive : TDObject {

    /**
     * Identifier of the target bot
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * The username to change
     */
    public string username { get; construct set; }

    /**
     * Pass true to activate the username; pass false to disable it
     */
    public bool is_active { get; construct set; }

    public ToggleBotUsernameIsActive (
        int64 bot_user_id,
        string username,
        bool is_active
    ) {
        Object (
            bot_user_id: bot_user_id,
            username: username,
            is_active: is_active,
            tdlib_type: "toggleBotUsernameIsActive",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
