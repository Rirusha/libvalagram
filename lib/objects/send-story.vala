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
 * Sends a new story to a chat; requires can_post_stories right for
 * supergroup and channel chats. Returns a temporary story
 */
internal class TDLib.SendStory : TDObject {

    /**
     * Identifier of the chat that will post the story. Pass Saved Messages
     * chat identifier when posting a story on behalf of the current user
     */
    public int64 chat_id { get; construct set; }

    /**
     * Content of the story
     */
    public InputStoryContent content { get; construct set; }

    /**
     * Clickable rectangle areas to be shown on the story media; pass null if
     * none
     */
    public InputStoryAreas areas { get; construct set; }

    /**
     * Story caption; pass null to use an empty caption;
     * 0-getOption("story_caption_length_max") characters; can have entities
     * only if getOption("can_use_text_entities_in_story_caption")
     */
    public FormattedText caption { get; construct set; }

    /**
     * The privacy settings for the story; ignored for stories sent to
     * supergroup and channel chats
     */
    public StoryPrivacySettings privacy_settings { get; construct set; }

    /**
     * Period after which the story is moved to archive, in seconds; must be
     * one of 6 * 3600, 12 * 3600, 86400, or 2 * 86400 for Telegram Premium
     * users, and 86400 otherwise
     */
    public int32 active_period { get; construct set; }

    /**
     * Full identifier of the original story, which content was used to
     * create the story; pass null if the story isn't repost of another story
     */
    public StoryFullId from_story_full_id { get; construct set; }

    /**
     * Pass true to keep the story accessible after expiration
     */
    public bool is_posted_to_chat_page { get; construct set; }

    /**
     * Pass true if the content of the story must be protected from
     * forwarding and screenshotting
     */
    public bool protect_content { get; construct set; }

    public SendStory (
        int64 chat_id,
        InputStoryContent content,
        InputStoryAreas areas,
        FormattedText caption,
        StoryPrivacySettings privacy_settings,
        int32 active_period,
        StoryFullId from_story_full_id,
        bool is_posted_to_chat_page,
        bool protect_content
    ) {
        Object (
            chat_id: chat_id,
            content: content,
            areas: areas,
            caption: caption,
            privacy_settings: privacy_settings,
            active_period: active_period,
            from_story_full_id: from_story_full_id,
            is_posted_to_chat_page: is_posted_to_chat_page,
            protect_content: protect_content,
            tdlib_type: "sendStory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
