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
 * Represents a story
 */
public class TDLib.Story : Error {

    /**
     * Unique story identifier among stories posted by the given chat
     */
    public int32 id_ { get; construct set; }

    /**
     * Identifier of the chat that posted the story
     */
    public int64 poster_chat_id { get; construct set; }

    /**
     * Identifier of the user or chat that posted the story; may be null if
     * the story is posted on behalf of the poster_chat_id
     */
    public MessageSender? poster_id { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the story was published
     */
    public int32 date { get; construct set; }

    /**
     * True, if the story is being posted by the current user
     */
    public bool is_being_posted { get; construct set; }

    /**
     * True, if the story is being edited by the current user
     */
    public bool is_being_edited { get; construct set; }

    /**
     * True, if the story was edited
     */
    public bool is_edited { get; construct set; }

    /**
     * True, if the story is saved in the profile of the chat that posted it
     * and will be available there after expiration
     */
    public bool is_posted_to_chat_page { get; construct set; }

    /**
     * True, if the story is visible only for the current user
     */
    public bool is_visible_only_for_self { get; construct set; }

    /**
     * True, if the story can be added to an album
     */
    public bool can_be_added_to_album { get; construct set; }

    /**
     * True, if the story can be deleted
     */
    public bool can_be_deleted { get; construct set; }

    /**
     * True, if the story can be edited
     */
    public bool can_be_edited { get; construct set; }

    /**
     * True, if the story can be forwarded as a message or reposted as a
     * story. Otherwise, screenshotting and saving of the story content must
     * be also forbidden
     */
    public bool can_be_forwarded { get; construct set; }

    /**
     * True, if the story can be replied in the chat with the user that
     * posted the story
     */
    public bool can_be_replied { get; construct set; }

    /**
     * True, if the story's is_posted_to_chat_page value can be changed
     */
    public bool can_toggle_is_posted_to_chat_page { get; construct set; }

    /**
     * True, if the story statistics are available through
     * {@link Client.get_story_statistics}
     */
    public bool can_get_statistics { get; construct set; }

    /**
     * True, if interactions with the story can be received through
     * {@link Client.get_story_interactions}
     */
    public bool can_get_interactions { get; construct set; }

    /**
     * True, if users viewed the story can't be received, because the story
     * has expired more than getOption("story_viewers_expiration_delay")
     * seconds ago
     */
    public bool has_expired_viewers { get; construct set; }

    /**
     * Information about the original story; may be null if the story wasn't
     * reposted
     */
    public StoryRepostInfo? repost_info { get; construct set; }

    /**
     * Information about interactions with the story; may be null if the
     * story isn't owned or there were no interactions
     */
    public StoryInteractionInfo? interaction_info { get; construct set; }

    /**
     * Type of the chosen reaction; may be null if none
     */
    public ReactionType? chosen_reaction_type { get; construct set; }

    /**
     * Privacy rules affecting story visibility; may be approximate for
     * non-owned stories
     */
    public StoryPrivacySettings privacy_settings { get; construct set; }

    /**
     * Content of the story
     */
    public StoryContent content { get; construct set; }

    /**
     * Clickable areas to be shown on the story content
     */
    public Gee.ArrayList<StoryArea?> areas { get; construct set; default = new Gee.ArrayList<StoryArea?> (); }

    /**
     * Caption of the story
     */
    public FormattedText caption { get; construct set; }

    /**
     * Identifiers of story albums to which the story is added; only for
     * manageable stories
     */
    public Gee.ArrayList<int32?> album_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public Story (
        int32 id_,
        int64 poster_chat_id,
        MessageSender? poster_id,
        int32 date,
        bool is_being_posted,
        bool is_being_edited,
        bool is_edited,
        bool is_posted_to_chat_page,
        bool is_visible_only_for_self,
        bool can_be_added_to_album,
        bool can_be_deleted,
        bool can_be_edited,
        bool can_be_forwarded,
        bool can_be_replied,
        bool can_toggle_is_posted_to_chat_page,
        bool can_get_statistics,
        bool can_get_interactions,
        bool has_expired_viewers,
        StoryRepostInfo? repost_info,
        StoryInteractionInfo? interaction_info,
        ReactionType? chosen_reaction_type,
        StoryPrivacySettings privacy_settings,
        StoryContent content,
        Gee.ArrayList<StoryArea?> areas,
        FormattedText caption,
        Gee.ArrayList<int32?> album_ids
    ) {
        Object (
            id_: id_,
            poster_chat_id: poster_chat_id,
            poster_id: poster_id,
            date: date,
            is_being_posted: is_being_posted,
            is_being_edited: is_being_edited,
            is_edited: is_edited,
            is_posted_to_chat_page: is_posted_to_chat_page,
            is_visible_only_for_self: is_visible_only_for_self,
            can_be_added_to_album: can_be_added_to_album,
            can_be_deleted: can_be_deleted,
            can_be_edited: can_be_edited,
            can_be_forwarded: can_be_forwarded,
            can_be_replied: can_be_replied,
            can_toggle_is_posted_to_chat_page: can_toggle_is_posted_to_chat_page,
            can_get_statistics: can_get_statistics,
            can_get_interactions: can_get_interactions,
            has_expired_viewers: has_expired_viewers,
            repost_info: repost_info,
            interaction_info: interaction_info,
            chosen_reaction_type: chosen_reaction_type,
            privacy_settings: privacy_settings,
            content: content,
            areas: areas,
            caption: caption,
            album_ids: album_ids,
            tdlib_type: "story",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
