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
 * Contains full information about a user
 */
public class TDLib.UserFullInfo : Error {

    /**
     * User profile photo set by the current user for the contact; may be
     * null. If null and user.profile_photo is null, then the photo is empty;
     * otherwise, it is unknown.
     * If non-null, then it is the same photo as in user.profile_photo and
     * chat.photo. This photo isn't returned in the list of user photos
     */
    public ChatPhoto? personal_photo { get; construct set; }

    /**
     * User profile photo; may be null. If null and user.profile_photo is
     * null, then the photo is empty; otherwise, it is unknown.
     * If non-null and personal_photo is null, then it is the same photo as
     * in user.profile_photo and chat.photo
     */
    public ChatPhoto? photo { get; construct set; }

    /**
     * User profile photo visible if the main photo is hidden by privacy
     * settings; may be null. If null and user.profile_photo is null, then
     * the photo is empty; otherwise, it is unknown.
     * If non-null and both photo and personal_photo are null, then it is the
     * same photo as in user.profile_photo and chat.photo. This photo isn't
     * returned in the list of user photos
     */
    public ChatPhoto? public_photo { get; construct set; }

    /**
     * Block list to which the user is added; may be null if none
     */
    public BlockList? block_list { get; construct set; }

    /**
     * True, if the user can be called
     */
    public bool can_be_called { get; construct set; }

    /**
     * True, if a video call can be created with the user
     */
    public bool supports_video_calls { get; construct set; }

    /**
     * True, if the user can't be called due to their privacy settings
     */
    public bool has_private_calls { get; construct set; }

    /**
     * True, if the user can't be linked in forwarded messages due to their
     * privacy settings
     */
    public bool has_private_forwards { get; construct set; }

    /**
     * True, if voice and video notes can't be sent or forwarded to the user
     */
    public bool has_restricted_voice_and_video_note_messages { get; construct set; }

    /**
     * True, if the user has posted to profile stories
     */
    public bool has_posted_to_profile_stories { get; construct set; }

    /**
     * True, if the user always enabled sponsored messages; known only for
     * the current user
     */
    public bool has_sponsored_messages_enabled { get; construct set; }

    /**
     * True, if the current user needs to explicitly allow to share their
     * phone number with the user when the method addContact is used
     */
    public bool need_phone_number_privacy_exception { get; construct set; }

    /**
     * True, if the user set chat background for both chat users and it
     * wasn't reverted yet
     */
    public bool set_chat_background { get; construct set; }

    /**
     * A short user bio; may be null for bots
     */
    public FormattedText? bio { get; construct set; }

    /**
     * Birthdate of the user; may be null if unknown
     */
    public Birthdate? birthdate { get; construct set; }

    /**
     * Identifier of the personal chat of the user; 0 if none
     */
    public int64 personal_chat_id { get; construct set; }

    /**
     * Number of gifts saved to profile by the user
     */
    public int32 gift_count { get; construct set; }

    /**
     * Number of group chats where both the other user and the current user
     * are a member; 0 for the current user
     */
    public int32 group_in_common_count { get; construct set; }

    /**
     * Information about business settings for Telegram Business accounts;
     * may be null if none
     */
    public BusinessInfo? business_info { get; construct set; }

    /**
     * For bots, information about the bot; may be null if the user isn't a
     * bot
     */
    public BotInfo? bot_info { get; construct set; }

    public UserFullInfo (
        ChatPhoto? personal_photo,
        ChatPhoto? photo,
        ChatPhoto? public_photo,
        BlockList? block_list,
        bool can_be_called,
        bool supports_video_calls,
        bool has_private_calls,
        bool has_private_forwards,
        bool has_restricted_voice_and_video_note_messages,
        bool has_posted_to_profile_stories,
        bool has_sponsored_messages_enabled,
        bool need_phone_number_privacy_exception,
        bool set_chat_background,
        FormattedText? bio,
        Birthdate? birthdate,
        int64 personal_chat_id,
        int32 gift_count,
        int32 group_in_common_count,
        BusinessInfo? business_info,
        BotInfo? bot_info
    ) {
        Object (
            personal_photo: personal_photo,
            photo: photo,
            public_photo: public_photo,
            block_list: block_list,
            can_be_called: can_be_called,
            supports_video_calls: supports_video_calls,
            has_private_calls: has_private_calls,
            has_private_forwards: has_private_forwards,
            has_restricted_voice_and_video_note_messages: has_restricted_voice_and_video_note_messages,
            has_posted_to_profile_stories: has_posted_to_profile_stories,
            has_sponsored_messages_enabled: has_sponsored_messages_enabled,
            need_phone_number_privacy_exception: need_phone_number_privacy_exception,
            set_chat_background: set_chat_background,
            bio: bio,
            birthdate: birthdate,
            personal_chat_id: personal_chat_id,
            gift_count: gift_count,
            group_in_common_count: group_in_common_count,
            business_info: business_info,
            bot_info: bot_info,
            tdlib_type: "userFullInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
