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
 * Contains information about a business bot that manages the chat
 */
public class TDLib.BusinessBotManageBar : Error {

    /**
     * User identifier of the bot
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * URL to be opened to manage the bot
     */
    public string manage_url { get; construct set; }

    /**
     * True, if the bot is paused. Use toggleBusinessConnectedBotChatIsPaused
     * to change the value of the field
     */
    public bool is_bot_paused { get; construct set; }

    /**
     * True, if the bot can reply
     */
    public bool can_bot_reply { get; construct set; }

    public BusinessBotManageBar (
        int64 bot_user_id,
        string manage_url,
        bool is_bot_paused,
        bool can_bot_reply
    ) {
        Object (
            bot_user_id: bot_user_id,
            manage_url: manage_url,
            is_bot_paused: is_bot_paused,
            can_bot_reply: can_bot_reply,
            tdlib_type: "businessBotManageBar",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
