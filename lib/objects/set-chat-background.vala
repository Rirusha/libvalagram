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
 * Sets the background in a specific chat. Supported only in private and
 * secret chats with non-deleted users, and in chats with sufficient
 * boost level and can_change_info administrator right
 */
internal class TDLib.SetChatBackground : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The input background to use; pass null to create a new filled or chat
     * theme background
     */
    public InputBackground background { get; construct set; }

    /**
     * Background type; pass null to use default background type for the
     * chosen background; backgroundTypeChatTheme isn't supported for private
     * and secret chats.
     * Use chatBoostLevelFeatures.chat_theme_background_count and
     * chatBoostLevelFeatures.can_set_custom_background to check whether the
     * background type can be set in the boosted chat
     */
    public BackgroundType type_ { get; construct set; }

    /**
     * Dimming of the background in dark themes, as a percentage; 0-100.
     * Applied only to Wallpaper and Fill types of background
     */
    public int32 dark_theme_dimming { get; construct set; }

    /**
     * Pass true to set background only for self; pass false to set
     * background for all chat users. Always false for backgrounds set in
     * boosted chats. Background can be set for both users only by Telegram
     * Premium users and if set background isn't of the type
     * inputBackgroundPrevious
     */
    public bool only_for_self { get; construct set; }

    public SetChatBackground (
        int64 chat_id,
        InputBackground background,
        BackgroundType type_,
        int32 dark_theme_dimming,
        bool only_for_self
    ) {
        Object (
            chat_id: chat_id,
            background: background,
            type_: type_,
            dark_theme_dimming: dark_theme_dimming,
            only_for_self: only_for_self,
            tdlib_type: "setChatBackground",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
