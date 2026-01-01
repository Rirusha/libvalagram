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
 * Deletes background in a specific chat
 */
public class TDLib.DeleteChatBackground : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Pass true to restore previously set background. Can be used only in
     * private and secret chats with non-deleted users if
     * userFullInfo.set_chat_background == true.
     * Supposed to be used from messageChatSetBackground messages with the
     * currently set background that was set for both sides by the other user
     */
    public bool restore_previous { get; construct set; }

    public DeleteChatBackground (
        int64 chat_id,
        bool restore_previous
    ) {
        Object (
            chat_id: chat_id,
            restore_previous: restore_previous,
            tdlib_type: "deleteChatBackground",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
