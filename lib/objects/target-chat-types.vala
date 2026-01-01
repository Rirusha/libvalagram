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
 * Describes allowed types for the target chat
 */
public class TDLib.TargetChatTypes : Error {

    /**
     * True, if private chats with ordinary users are allowed
     */
    public bool allow_user_chats { get; construct set; }

    /**
     * True, if private chats with other bots are allowed
     */
    public bool allow_bot_chats { get; construct set; }

    /**
     * True, if basic group and supergroup chats are allowed
     */
    public bool allow_group_chats { get; construct set; }

    /**
     * True, if channel chats are allowed
     */
    public bool allow_channel_chats { get; construct set; }

    public TargetChatTypes (
        bool allow_user_chats,
        bool allow_bot_chats,
        bool allow_group_chats,
        bool allow_channel_chats
    ) {
        Object (
            allow_user_chats: allow_user_chats,
            allow_bot_chats: allow_bot_chats,
            allow_group_chats: allow_group_chats,
            allow_channel_chats: allow_channel_chats,
            tdlib_type: "targetChatTypes",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
