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
 * Changes the slow mode delay of a chat. Available only for supergroups;
 * requires can_restrict_members administrator right
 */
public class TDLib.SetChatSlowModeDelay : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * New slow mode delay for the chat, in seconds; must be one of 0, 5, 10,
     * 30, 60, 300, 900, 3600
     */
    public int32 slow_mode_delay { get; construct set; }

    public SetChatSlowModeDelay (
        int64 chat_id,
        int32 slow_mode_delay
    ) {
        Object (
            chat_id: chat_id,
            slow_mode_delay: slow_mode_delay,
            tdlib_type: "setChatSlowModeDelay",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
