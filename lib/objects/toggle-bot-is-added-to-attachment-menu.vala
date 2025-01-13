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
 * Adds or removes a bot to attachment and side menu. Bot can be added to
 * the menu, only if userTypeBot.can_be_added_to_attachment_menu == true
 */
public class TDLib.ToggleBotIsAddedToAttachmentMenu : TDObject {

    /**
     * Bot's user identifier
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * Pass true to add the bot to attachment menu; pass false to remove the
     * bot from attachment menu
     */
    public bool is_added { get; construct set; }

    /**
     * Pass true if the current user allowed the bot to send them messages.
     * Ignored if is_added is false
     */
    public bool allow_write_access { get; construct set; }

    public ToggleBotIsAddedToAttachmentMenu (
        int64 bot_user_id,
        bool is_added,
        bool allow_write_access
    ) {
        Object (
            bot_user_id: bot_user_id,
            is_added: is_added,
            allow_write_access: allow_write_access,
            tdlib_type: "toggleBotIsAddedToAttachmentMenu",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
