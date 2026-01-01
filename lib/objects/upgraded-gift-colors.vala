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
 * Contains information about color scheme for user's name, background of
 * empty chat photo, replies to messages and link previews
 */
public class TDLib.UpgradedGiftColors : Error {

    /**
     * Unique identifier of the upgraded gift colors
     */
    public int64 id_ { get; construct set; }

    /**
     * Custom emoji identifier of the model of the upgraded gift
     */
    public int64 model_custom_emoji_id { get; construct set; }

    /**
     * Custom emoji identifier of the symbol of the upgraded gift
     */
    public int64 symbol_custom_emoji_id { get; construct set; }

    /**
     * Accent color to use in light themes in RGB format
     */
    public int32 light_theme_accent_color { get; construct set; }

    /**
     * The list of 1-3 colors in RGB format, describing the accent color, as
     * expected to be shown in light themes
     */
    public Gee.ArrayList<int32?> light_theme_colors { get; construct set; default = new Gee.ArrayList<int32?> (); }

    /**
     * Accent color to use in dark themes in RGB format
     */
    public int32 dark_theme_accent_color { get; construct set; }

    /**
     * The list of 1-3 colors in RGB format, describing the accent color, as
     * expected to be shown in dark themes
     */
    public Gee.ArrayList<int32?> dark_theme_colors { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public UpgradedGiftColors (
        int64 id_,
        int64 model_custom_emoji_id,
        int64 symbol_custom_emoji_id,
        int32 light_theme_accent_color,
        Gee.ArrayList<int32?> light_theme_colors,
        int32 dark_theme_accent_color,
        Gee.ArrayList<int32?> dark_theme_colors
    ) {
        Object (
            id_: id_,
            model_custom_emoji_id: model_custom_emoji_id,
            symbol_custom_emoji_id: symbol_custom_emoji_id,
            light_theme_accent_color: light_theme_accent_color,
            light_theme_colors: light_theme_colors,
            dark_theme_accent_color: dark_theme_accent_color,
            dark_theme_colors: dark_theme_colors,
            tdlib_type: "upgradedGiftColors",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
