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
 * Edits title and icon of a topic in a forum supergroup chat or a chat
 * with a bot with topics; for supergroup chats requires
 * can_manage_topics administrator right
 * unless the user is creator of the topic
 */
public class TDLib.EditForumTopic : TDObject {

    /**
     * Identifier of the chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * Forum topic identifier
     */
    public int32 forum_topic_id { get; construct set; }

    /**
     * New name of the topic; 0-128 characters. If empty, the previous topic
     * name is kept
     */
    public string name { get; construct set; }

    /**
     * Pass true to edit the icon of the topic. Icon of the General topic
     * can't be edited
     */
    public bool edit_icon_custom_emoji { get; construct set; }

    /**
     * Identifier of the new custom emoji for topic icon; pass 0 to remove
     * the custom emoji. Ignored if edit_icon_custom_emoji is false. Telegram
     * Premium users can use any custom emoji, other users can use only a
     * custom emoji returned by {@link Client.get_forum_topic_default_icons}
     */
    public int64 icon_custom_emoji_id { get; construct set; }

    public EditForumTopic (
        int64 chat_id,
        int32 forum_topic_id,
        string name,
        bool edit_icon_custom_emoji,
        int64 icon_custom_emoji_id
    ) {
        Object (
            chat_id: chat_id,
            forum_topic_id: forum_topic_id,
            name: name,
            edit_icon_custom_emoji: edit_icon_custom_emoji,
            icon_custom_emoji_id: icon_custom_emoji_id,
            tdlib_type: "editForumTopic",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
