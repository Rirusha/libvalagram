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
 * Contains information about notification settings for several chats
 */
public class TDLib.ScopeNotificationSettings : Error {

    /**
     * Time left before notifications will be unmuted, in seconds
     */
    public int32 mute_for { get; construct set; }

    /**
     * Identifier of the notification sound to be played; 0 if sound is
     * disabled
     */
    public int64 sound_id { get; construct set; }

    /**
     * True, if message content must be displayed in notifications
     */
    public bool show_preview { get; construct set; }

    /**
     * If true, story notifications are received only for the first 5 chats
     * from topChatCategoryUsers regardless of the value of mute_stories
     */
    public bool use_default_mute_stories { get; construct set; }

    /**
     * True, if story notifications are disabled
     */
    public bool mute_stories { get; construct set; }

    /**
     * Identifier of the notification sound to be played for stories; 0 if
     * sound is disabled
     */
    public int64 story_sound_id { get; construct set; }

    /**
     * True, if the sender of stories must be displayed in notifications
     */
    public bool show_story_sender { get; construct set; }

    /**
     * True, if notifications for incoming pinned messages will be created as
     * for an ordinary unread message
     */
    public bool disable_pinned_message_notifications { get; construct set; }

    /**
     * True, if notifications for messages with mentions will be created as
     * for an ordinary unread message
     */
    public bool disable_mention_notifications { get; construct set; }

    public ScopeNotificationSettings (
        int32 mute_for,
        int64 sound_id,
        bool show_preview,
        bool use_default_mute_stories,
        bool mute_stories,
        int64 story_sound_id,
        bool show_story_sender,
        bool disable_pinned_message_notifications,
        bool disable_mention_notifications
    ) {
        Object (
            mute_for: mute_for,
            sound_id: sound_id,
            show_preview: show_preview,
            use_default_mute_stories: use_default_mute_stories,
            mute_stories: mute_stories,
            story_sound_id: story_sound_id,
            show_story_sender: show_story_sender,
            disable_pinned_message_notifications: disable_pinned_message_notifications,
            disable_mention_notifications: disable_mention_notifications,
            tdlib_type: "scopeNotificationSettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
