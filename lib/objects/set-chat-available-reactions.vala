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
 * Changes reactions, available in a chat. Available for basic groups,
 * supergroups, and channels. Requires can_change_info member right
 */
internal class TDLib.SetChatAvailableReactions : TDObject {

    /**
     * Identifier of the chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * Reactions available in the chat. All explicitly specified emoji
     * reactions must be active. In channel chats up to the chat's boost
     * level custom emoji reactions can be explicitly specified
     */
    public ChatAvailableReactions available_reactions { get; construct set; }

    public SetChatAvailableReactions (
        int64 chat_id,
        ChatAvailableReactions available_reactions
    ) {
        Object (
            chat_id: chat_id,
            available_reactions: available_reactions,
            tdlib_type: "setChatAvailableReactions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
