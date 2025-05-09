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
 * Contains a list of features available on a specific chat boost level
 */
public class TDLib.ChatBoostLevelFeatures : Error {

    /**
     * Target chat boost level
     */
    public int32 level { get; construct set; }

    /**
     * Number of stories that the chat can publish daily
     */
    public int32 story_per_day_count { get; construct set; }

    /**
     * Number of custom emoji reactions that can be added to the list of
     * available reactions
     */
    public int32 custom_emoji_reaction_count { get; construct set; }

    /**
     * Number of custom colors for chat title
     */
    public int32 title_color_count { get; construct set; }

    /**
     * Number of custom colors for profile photo background
     */
    public int32 profile_accent_color_count { get; construct set; }

    /**
     * True, if custom emoji for profile background can be set
     */
    public bool can_set_profile_background_custom_emoji { get; construct set; }

    /**
     * Number of custom colors for background of empty chat photo, replies to
     * messages and link previews
     */
    public int32 accent_color_count { get; construct set; }

    /**
     * True, if custom emoji for reply header and link preview background can
     * be set
     */
    public bool can_set_background_custom_emoji { get; construct set; }

    /**
     * True, if emoji status can be set
     */
    public bool can_set_emoji_status { get; construct set; }

    /**
     * Number of chat theme backgrounds that can be set as chat background
     */
    public int32 chat_theme_background_count { get; construct set; }

    /**
     * True, if custom background can be set in the chat for all users
     */
    public bool can_set_custom_background { get; construct set; }

    /**
     * True, if custom emoji sticker set can be set for the chat
     */
    public bool can_set_custom_emoji_sticker_set { get; construct set; }

    /**
     * True, if automatic translation of messages can be enabled in the chat
     */
    public bool can_enable_automatic_translation { get; construct set; }

    /**
     * True, if speech recognition can be used for video note and voice note
     * messages by all users
     */
    public bool can_recognize_speech { get; construct set; }

    /**
     * True, if sponsored messages can be disabled in the chat
     */
    public bool can_disable_sponsored_messages { get; construct set; }

    public ChatBoostLevelFeatures (
        int32 level,
        int32 story_per_day_count,
        int32 custom_emoji_reaction_count,
        int32 title_color_count,
        int32 profile_accent_color_count,
        bool can_set_profile_background_custom_emoji,
        int32 accent_color_count,
        bool can_set_background_custom_emoji,
        bool can_set_emoji_status,
        int32 chat_theme_background_count,
        bool can_set_custom_background,
        bool can_set_custom_emoji_sticker_set,
        bool can_enable_automatic_translation,
        bool can_recognize_speech,
        bool can_disable_sponsored_messages
    ) {
        Object (
            level: level,
            story_per_day_count: story_per_day_count,
            custom_emoji_reaction_count: custom_emoji_reaction_count,
            title_color_count: title_color_count,
            profile_accent_color_count: profile_accent_color_count,
            can_set_profile_background_custom_emoji: can_set_profile_background_custom_emoji,
            accent_color_count: accent_color_count,
            can_set_background_custom_emoji: can_set_background_custom_emoji,
            can_set_emoji_status: can_set_emoji_status,
            chat_theme_background_count: chat_theme_background_count,
            can_set_custom_background: can_set_custom_background,
            can_set_custom_emoji_sticker_set: can_set_custom_emoji_sticker_set,
            can_enable_automatic_translation: can_enable_automatic_translation,
            can_recognize_speech: can_recognize_speech,
            can_disable_sponsored_messages: can_disable_sponsored_messages,
            tdlib_type: "chatBoostLevelFeatures",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
