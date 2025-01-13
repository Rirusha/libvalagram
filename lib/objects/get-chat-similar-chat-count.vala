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
 * Returns approximate number of chats similar to the given chat
 */
public class TDLib.GetChatSimilarChatCount : TDObject {

    /**
     * Identifier of the target chat; must be an identifier of a channel chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * Pass true to get the number of chats without sending network requests,
     * or -1 if the number of chats is unknown locally
     */
    public bool return_local { get; construct set; }

    public GetChatSimilarChatCount (
        int64 chat_id,
        bool return_local
    ) {
        Object (
            chat_id: chat_id,
            return_local: return_local,
            tdlib_type: "getChatSimilarChatCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
