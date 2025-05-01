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
 * Contains information about notification settings for a chat or a forum
 * topic
 */
public class TDLib.ChatNotificationSettings : Error {

    /**
     * If true, the value for the relevant type of chat or the forum chat is
     * used instead of mute_for
     */
    public bool use_default_mute_for { get; construct set; }

    /**
     * Time left before notifications will be unmuted, in seconds
     */
    public int32 mute_for { get; construct set; }

    /**
     * If true, the value for the relevant type of chat or the forum chat is
     * used instead of sound_id
     */
    public bool use_default_sound { get; construct set; }

    /**
     * Identifier of the notification sound to be played for messages; 0 if
     * sound is disabled
     */
    public int64 sound_id { get; construct set; }

    /**
     * If true, the value for the relevant type of chat or the forum chat is
     * used instead of show_preview
     */
    public bool use_default_show_preview { get; construct set; }

    /**
     * True, if message content must be displayed in notifications
     */
    public bool show_preview { get; construct set; }

    /**
     * If true, the value for the relevant type of chat is used instead of
     * mute_stories
     */
    public bool use_default_mute_stories { get; construct set; }

    /**
     * True, if story notifications are disabled for the chat
     */
    public bool mute_stories { get; construct set; }

    /**
     * If true, the value for the relevant type of chat is used instead of
     * story_sound_id
     */
    public bool use_default_story_sound { get; construct set; }

    /**
     * Identifier of the notification sound to be played for stories; 0 if
     * sound is disabled
     */
    public int64 story_sound_id { get; construct set; }

    /**
     * If true, the value for the relevant type of chat is used instead of
     * show_story_poster
     */
    public bool use_default_show_story_poster { get; construct set; }

    /**
     * True, if the chat that posted a story must be displayed in
     * notifications
     */
    public bool show_story_poster { get; construct set; }

    /**
     * If true, the value for the relevant type of chat or the forum chat is
     * used instead of disable_pinned_message_notifications
     */
    public bool use_default_disable_pinned_message_notifications { get; construct set; }

    /**
     * If true, notifications for incoming pinned messages will be created as
     * for an ordinary unread message
     */
    public bool disable_pinned_message_notifications { get; construct set; }

    /**
     * If true, the value for the relevant type of chat or the forum chat is
     * used instead of disable_mention_notifications
     */
    public bool use_default_disable_mention_notifications { get; construct set; }

    /**
     * If true, notifications for messages with mentions will be created as
     * for an ordinary unread message
     */
    public bool disable_mention_notifications { get; construct set; }

    public ChatNotificationSettings (
        bool use_default_mute_for,
        int32 mute_for,
        bool use_default_sound,
        int64 sound_id,
        bool use_default_show_preview,
        bool show_preview,
        bool use_default_mute_stories,
        bool mute_stories,
        bool use_default_story_sound,
        int64 story_sound_id,
        bool use_default_show_story_poster,
        bool show_story_poster,
        bool use_default_disable_pinned_message_notifications,
        bool disable_pinned_message_notifications,
        bool use_default_disable_mention_notifications,
        bool disable_mention_notifications
    ) {
        Object (
            use_default_mute_for: use_default_mute_for,
            mute_for: mute_for,
            use_default_sound: use_default_sound,
            sound_id: sound_id,
            use_default_show_preview: use_default_show_preview,
            show_preview: show_preview,
            use_default_mute_stories: use_default_mute_stories,
            mute_stories: mute_stories,
            use_default_story_sound: use_default_story_sound,
            story_sound_id: story_sound_id,
            use_default_show_story_poster: use_default_show_story_poster,
            show_story_poster: show_story_poster,
            use_default_disable_pinned_message_notifications: use_default_disable_pinned_message_notifications,
            disable_pinned_message_notifications: disable_pinned_message_notifications,
            use_default_disable_mention_notifications: use_default_disable_mention_notifications,
            disable_mention_notifications: disable_mention_notifications,
            tdlib_type: "chatNotificationSettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
