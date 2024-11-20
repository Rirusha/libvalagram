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
 * Removes all pinned messages from a chat; requires can_pin_messages
 * member right if the chat is a basic group or supergroup, or
 * can_edit_messages administrator right if the chat is a channel
 */
internal class TDLib.UnpinAllChatMessages : TDObject {

    /**
     * Identifier of the chat
     */
    public int64 chat_id { get; construct set; }

    public UnpinAllChatMessages (
        int64 chat_id
    ) {
        Object (
            chat_id: chat_id,
            tdlib_type: "unpinAllChatMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
