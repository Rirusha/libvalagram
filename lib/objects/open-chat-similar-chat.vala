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
 * Informs TDLib that a chat was opened from the list of similar chats.
 * The method is independent of {@link Client.open_chat} and
 * {@link Client.close_chat} methods
 */
public class TDLib.OpenChatSimilarChat : TDObject {

    /**
     * Identifier of the original chat, which similar chats were requested
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the opened chat
     */
    public int64 opened_chat_id { get; construct set; }

    public OpenChatSimilarChat (
        int64 chat_id,
        int64 opened_chat_id
    ) {
        Object (
            chat_id: chat_id,
            opened_chat_id: opened_chat_id,
            tdlib_type: "openChatSimilarChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
