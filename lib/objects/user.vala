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
 * Represents a user
 */
public class TDLib.User : Error {

    /**
     * User identifier
     */
    public int64 id_ { get; construct set; }

    /**
     * First name of the user
     */
    public string first_name { get; construct set; }

    /**
     * Last name of the user
     */
    public string last_name { get; construct set; }

    /**
     * Usernames of the user; may be null
     */
    public Usernames? usernames { get; construct set; }

    /**
     * Phone number of the user
     */
    public string phone_number { get; construct set; }

    /**
     * Current online status of the user
     */
    public UserStatus status { get; construct set; }

    /**
     * Profile photo of the user; may be null
     */
    public ProfilePhoto? profile_photo { get; construct set; }

    /**
     * Identifier of the accent color for name, and backgrounds of profile
     * photo, reply header, and link preview
     */
    public int32 accent_color_id { get; construct set; }

    /**
     * Identifier of a custom emoji to be shown on the reply header and link
     * preview background; 0 if none
     */
    public int64 background_custom_emoji_id { get; construct set; }

    /**
     * Color scheme based on an upgraded gift to be used for the user instead
     * of accent_color_id and background_custom_emoji_id; may be null if none
     */
    public UpgradedGiftColors? upgraded_gift_colors { get; construct set; }

    /**
     * Identifier of the accent color for the user's profile; -1 if none
     */
    public int32 profile_accent_color_id { get; construct set; }

    /**
     * Identifier of a custom emoji to be shown on the background of the
     * user's profile; 0 if none
     */
    public int64 profile_background_custom_emoji_id { get; construct set; }

    /**
     * Emoji status to be shown instead of the default Telegram Premium
     * badge; may be null
     */
    public EmojiStatus? emoji_status { get; construct set; }

    /**
     * The user is a contact of the current user
     */
    public bool is_contact { get; construct set; }

    /**
     * The user is a contact of the current user and the current user is a
     * contact of the user
     */
    public bool is_mutual_contact { get; construct set; }

    /**
     * The user is a {@link Client.close} friend of the current user; implies
     * that the user is a contact
     */
    public bool is_close_friend { get; construct set; }

    /**
     * Information about verification status of the user; may be null if none
     */
    public VerificationStatus? verification_status { get; construct set; }

    /**
     * True, if the user is a Telegram Premium user
     */
    public bool is_premium { get; construct set; }

    /**
     * True, if the user is Telegram support account
     */
    public bool is_support { get; construct set; }

    /**
     * Information about restrictions that must be applied to the
     * corresponding private chat; may be null if none
     */
    public RestrictionInfo? restriction_info { get; construct set; }

    /**
     * State of active stories of the user; may be null if the user has no
     * active stories
     */
    public ActiveStoryState? active_story_state { get; construct set; }

    /**
     * True, if the user may restrict new chats with non-contacts. Use
     * {@link Client.can_send_message_to_user} to check whether the current
     * user can message the user or try to create a chat with them
     */
    public bool restricts_new_chats { get; construct set; }

    /**
     * Number of Telegram Stars that must be paid by general user for each
     * sent message to the user. If positive and userFullInfo is unknown, use
     * {@link Client.can_send_message_to_user} to check whether the current
     * user must pay
     */
    public int64 paid_message_star_count { get; construct set; }

    /**
     * If false, the user is inaccessible, and the only information known
     * about the user is inside this class. Identifier of the user can't be
     * passed to any method
     */
    public bool have_access { get; construct set; }

    /**
     * Type of the user
     */
    public UserType type_ { get; construct set; }

    /**
     * IETF language tag of the user's language; only available to bots
     */
    public string language_code { get; construct set; }

    /**
     * True, if the user added the current bot to attachment menu; only
     * available to bots
     */
    public bool added_to_attachment_menu { get; construct set; }

    public User (
        int64 id_,
        string first_name,
        string last_name,
        Usernames? usernames,
        string phone_number,
        UserStatus status,
        ProfilePhoto? profile_photo,
        int32 accent_color_id,
        int64 background_custom_emoji_id,
        UpgradedGiftColors? upgraded_gift_colors,
        int32 profile_accent_color_id,
        int64 profile_background_custom_emoji_id,
        EmojiStatus? emoji_status,
        bool is_contact,
        bool is_mutual_contact,
        bool is_close_friend,
        VerificationStatus? verification_status,
        bool is_premium,
        bool is_support,
        RestrictionInfo? restriction_info,
        ActiveStoryState? active_story_state,
        bool restricts_new_chats,
        int64 paid_message_star_count,
        bool have_access,
        UserType type_,
        string language_code,
        bool added_to_attachment_menu
    ) {
        Object (
            id_: id_,
            first_name: first_name,
            last_name: last_name,
            usernames: usernames,
            phone_number: phone_number,
            status: status,
            profile_photo: profile_photo,
            accent_color_id: accent_color_id,
            background_custom_emoji_id: background_custom_emoji_id,
            upgraded_gift_colors: upgraded_gift_colors,
            profile_accent_color_id: profile_accent_color_id,
            profile_background_custom_emoji_id: profile_background_custom_emoji_id,
            emoji_status: emoji_status,
            is_contact: is_contact,
            is_mutual_contact: is_mutual_contact,
            is_close_friend: is_close_friend,
            verification_status: verification_status,
            is_premium: is_premium,
            is_support: is_support,
            restriction_info: restriction_info,
            active_story_state: active_story_state,
            restricts_new_chats: restricts_new_chats,
            paid_message_star_count: paid_message_star_count,
            have_access: have_access,
            type_: type_,
            language_code: language_code,
            added_to_attachment_menu: added_to_attachment_menu,
            tdlib_type: "user",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
