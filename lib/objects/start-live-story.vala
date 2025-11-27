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
 * Starts a new live story on behalf of a chat; requires can_post_stories
 * administrator right for channel chats
 */
public class TDLib.StartLiveStory : TDObject {

    /**
     * Identifier of the chat that will start the live story. Pass Saved
     * Messages chat identifier when starting a live story on behalf of the
     * current user, or a channel chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The privacy settings for the story; ignored for stories posted on
     * behalf of channel chats
     */
    public StoryPrivacySettings privacy_settings { get; construct set; }

    /**
     * Pass true if the content of the story must be protected from
     * screenshotting
     */
    public bool protect_content { get; construct set; }

    /**
     * Pass true to create an RTMP stream instead of an ordinary group call
     */
    public bool is_rtmp_stream { get; construct set; }

    /**
     * Pass true to allow viewers of the story to send messages
     */
    public bool enable_messages { get; construct set; }

    /**
     * The minimum number of Telegram Stars that must be paid by viewers for
     * each sent message to the call;
     * 0-getOption("paid_group_call_message_star_count_max")
     */
    public int64 paid_message_star_count { get; construct set; }

    public StartLiveStory (
        int64 chat_id,
        StoryPrivacySettings privacy_settings,
        bool protect_content,
        bool is_rtmp_stream,
        bool enable_messages,
        int64 paid_message_star_count
    ) {
        Object (
            chat_id: chat_id,
            privacy_settings: privacy_settings,
            protect_content: protect_content,
            is_rtmp_stream: is_rtmp_stream,
            enable_messages: enable_messages,
            paid_message_star_count: paid_message_star_count,
            tdlib_type: "startLiveStory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
