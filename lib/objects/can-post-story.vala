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
 * Checks whether the current user can post a story on behalf of a chat;
 * requires can_post_stories right for supergroup and channel chats
 */
public class TDLib.CanPostStory : TDObject {

    /**
     * Chat identifier. Pass Saved Messages chat identifier when posting a
     * story on behalf of the current user
     */
    public int64 chat_id { get; construct set; }

    public CanPostStory (
        int64 chat_id
    ) {
        Object (
            chat_id: chat_id,
            tdlib_type: "canPostStory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
