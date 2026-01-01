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
 * Changes accent color and background custom emoji for profile of the
 * current user; for Telegram Premium users only
 */
public class TDLib.SetProfileAccentColor : TDObject {

    /**
     * Identifier of the accent color to use for profile; pass -1 if none
     */
    public int32 profile_accent_color_id { get; construct set; }

    /**
     * Identifier of a custom emoji to be shown on the user's profile photo
     * background; 0 if none
     */
    public int64 profile_background_custom_emoji_id { get; construct set; }

    public SetProfileAccentColor (
        int32 profile_accent_color_id,
        int64 profile_background_custom_emoji_id
    ) {
        Object (
            profile_accent_color_id: profile_accent_color_id,
            profile_background_custom_emoji_id: profile_background_custom_emoji_id,
            tdlib_type: "setProfileAccentColor",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
