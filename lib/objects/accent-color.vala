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
 * Contains information about supported accent color for user/chat name,
 * background of empty chat photo, replies to messages and link previews
 */
public class TDLib.AccentColor : Error {

    /**
     * Accent color identifier
     */
    public int32 id_ { get; construct set; }

    /**
     * Identifier of a built-in color to use in places, where only one color
     * is needed; 0-6
     */
    public int32 built_in_accent_color_id { get; construct set; }

    /**
     * The list of 1-3 colors in RGB format, describing the accent color, as
     * expected to be shown in light themes
     */
    public Gee.ArrayList<int32?> light_theme_colors { get; construct set; default = new Gee.ArrayList<int32?> (); }

    /**
     * The list of 1-3 colors in RGB format, describing the accent color, as
     * expected to be shown in dark themes
     */
    public Gee.ArrayList<int32?> dark_theme_colors { get; construct set; default = new Gee.ArrayList<int32?> (); }

    /**
     * The minimum chat boost level required to use the color in a channel
     * chat
     */
    public int32 min_channel_chat_boost_level { get; construct set; }

    public AccentColor (
        int32 id_,
        int32 built_in_accent_color_id,
        Gee.ArrayList<int32?> light_theme_colors,
        Gee.ArrayList<int32?> dark_theme_colors,
        int32 min_channel_chat_boost_level
    ) {
        Object (
            id_: id_,
            built_in_accent_color_id: built_in_accent_color_id,
            light_theme_colors: light_theme_colors,
            dark_theme_colors: dark_theme_colors,
            min_channel_chat_boost_level: min_channel_chat_boost_level,
            tdlib_type: "accentColor",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
