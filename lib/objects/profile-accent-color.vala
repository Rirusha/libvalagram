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
 * Contains information about supported accent color for user profile
 * photo background
 */
public class TDLib.ProfileAccentColor : Error {

    /**
     * Profile accent color identifier
     */
    public int32 id_ { get; construct set; }

    /**
     * Accent colors expected to be used in light themes
     */
    public ProfileAccentColors light_theme_colors { get; construct set; }

    /**
     * Accent colors expected to be used in dark themes
     */
    public ProfileAccentColors dark_theme_colors { get; construct set; }

    /**
     * The minimum chat boost level required to use the color in a supergroup
     * chat
     */
    public int32 min_supergroup_chat_boost_level { get; construct set; }

    /**
     * The minimum chat boost level required to use the color in a channel
     * chat
     */
    public int32 min_channel_chat_boost_level { get; construct set; }

    public ProfileAccentColor (
        int32 id_,
        ProfileAccentColors light_theme_colors,
        ProfileAccentColors dark_theme_colors,
        int32 min_supergroup_chat_boost_level,
        int32 min_channel_chat_boost_level
    ) {
        Object (
            id_: id_,
            light_theme_colors: light_theme_colors,
            dark_theme_colors: dark_theme_colors,
            min_supergroup_chat_boost_level: min_supergroup_chat_boost_level,
            min_channel_chat_boost_level: min_channel_chat_boost_level,
            tdlib_type: "profileAccentColor",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
