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
 * Creates a topic in a forum supergroup chat; requires can_manage_topics
 * administrator or can_create_topics member right in the supergroup
 */
internal class TDLib.CreateForumTopic : TDObject {

    /**
     * Identifier of the chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * Name of the topic; 1-128 characters
     */
    public string name { get; construct set; }

    /**
     * Icon of the topic. Icon color must be one of 0x6FB9F0, 0xFFD67E,
     * 0xCB86DB, 0x8EEE98, 0xFF93B2, or 0xFB6F5F. Telegram Premium users can
     * use any custom emoji as topic icon, other users can use only a custom
     * emoji returned by getForumTopicDefaultIcons
     */
    public ForumTopicIcon icon { get; construct set; }

    public CreateForumTopic (
        int64 chat_id,
        string name,
        ForumTopicIcon icon
    ) {
        Object (
            chat_id: chat_id,
            name: name,
            icon: icon,
            tdlib_type: "createForumTopic",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
