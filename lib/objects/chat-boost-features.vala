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
 * Contains a list of features available on the first chat boost levels
 */
public class TDLib.ChatBoostFeatures : Error {

    /**
     * The list of features
     */
    public Gee.ArrayList<ChatBoostLevelFeatures?> features { get; construct set; default = new Gee.ArrayList<ChatBoostLevelFeatures?> (); }

    /**
     * The minimum boost level required to set custom emoji for profile
     * background
     */
    public int32 min_profile_background_custom_emoji_boost_level { get; construct set; }

    /**
     * The minimum boost level required to set custom emoji for reply header
     * and link preview background; for channel chats only
     */
    public int32 min_background_custom_emoji_boost_level { get; construct set; }

    /**
     * The minimum boost level required to set emoji status
     */
    public int32 min_emoji_status_boost_level { get; construct set; }

    /**
     * The minimum boost level required to set a chat theme background as
     * chat background
     */
    public int32 min_chat_theme_background_boost_level { get; construct set; }

    /**
     * The minimum boost level required to set custom chat background
     */
    public int32 min_custom_background_boost_level { get; construct set; }

    /**
     * The minimum boost level required to set custom emoji sticker set for
     * the chat; for supergroup chats only
     */
    public int32 min_custom_emoji_sticker_set_boost_level { get; construct set; }

    /**
     * The minimum boost level allowing to recognize speech in video note and
     * voice note messages for non-Premium users; for supergroup chats only
     */
    public int32 min_speech_recognition_boost_level { get; construct set; }

    /**
     * The minimum boost level allowing to disable sponsored messages in the
     * chat; for channel chats only
     */
    public int32 min_sponsored_message_disable_boost_level { get; construct set; }

    public ChatBoostFeatures (
        Gee.ArrayList<ChatBoostLevelFeatures?> features,
        int32 min_profile_background_custom_emoji_boost_level,
        int32 min_background_custom_emoji_boost_level,
        int32 min_emoji_status_boost_level,
        int32 min_chat_theme_background_boost_level,
        int32 min_custom_background_boost_level,
        int32 min_custom_emoji_sticker_set_boost_level,
        int32 min_speech_recognition_boost_level,
        int32 min_sponsored_message_disable_boost_level
    ) {
        Object (
            features: features,
            min_profile_background_custom_emoji_boost_level: min_profile_background_custom_emoji_boost_level,
            min_background_custom_emoji_boost_level: min_background_custom_emoji_boost_level,
            min_emoji_status_boost_level: min_emoji_status_boost_level,
            min_chat_theme_background_boost_level: min_chat_theme_background_boost_level,
            min_custom_background_boost_level: min_custom_background_boost_level,
            min_custom_emoji_sticker_set_boost_level: min_custom_emoji_sticker_set_boost_level,
            min_speech_recognition_boost_level: min_speech_recognition_boost_level,
            min_sponsored_message_disable_boost_level: min_sponsored_message_disable_boost_level,
            tdlib_type: "chatBoostFeatures",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
