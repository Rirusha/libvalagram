/*
 * Copyright (C) 2024 Vladimir Vaskov
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
 * Toggles whether the bot can manage emoji status of the current user
 */
internal class TDLib.ToggleBotCanManageEmojiStatus : TDObject {

    /**
     * User identifier of the bot
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * Pass true if the bot is allowed to change emoji status of the user;
     * pass false otherwise
     */
    public bool can_manage_emoji_status { get; construct set; }

    public ToggleBotCanManageEmojiStatus (
        int64 bot_user_id,
        bool can_manage_emoji_status
    ) {
        Object (
            bot_user_id: bot_user_id,
            can_manage_emoji_status: can_manage_emoji_status,
            tdlib_type: "toggleBotCanManageEmojiStatus",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
