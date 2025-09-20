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
 * Describes theme settings
 */
public class TDLib.ThemeSettings : Error {

    /**
     * Base theme for this theme
     */
    public BuiltInTheme base_theme { get; construct set; }

    /**
     * Theme accent color in ARGB format
     */
    public int32 accent_color { get; construct set; }

    /**
     * The background to be used in chats; may be null
     */
    public Background? background { get; construct set; }

    /**
     * The fill to be used as a background for outgoing messages; may be null
     * if the fill from the base theme must be used instead
     */
    public BackgroundFill? outgoing_message_fill { get; construct set; }

    /**
     * If true, the freeform gradient fill needs to be animated on every sent
     * message
     */
    public bool animate_outgoing_message_fill { get; construct set; }

    /**
     * Accent color of outgoing messages in ARGB format
     */
    public int32 outgoing_message_accent_color { get; construct set; }

    public ThemeSettings (
        BuiltInTheme base_theme,
        int32 accent_color,
        Background? background,
        BackgroundFill? outgoing_message_fill,
        bool animate_outgoing_message_fill,
        int32 outgoing_message_accent_color
    ) {
        Object (
            base_theme: base_theme,
            accent_color: accent_color,
            background: background,
            outgoing_message_fill: outgoing_message_fill,
            animate_outgoing_message_fill: animate_outgoing_message_fill,
            outgoing_message_accent_color: outgoing_message_accent_color,
            tdlib_type: "themeSettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
