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
 * Describes a chat theme based on an emoji
 */
public class TDLib.EmojiChatTheme : Error {

    /**
     * Theme name
     */
    public string name { get; construct set; }

    /**
     * Theme settings for a light chat theme
     */
    public ThemeSettings light_settings { get; construct set; }

    /**
     * Theme settings for a dark chat theme
     */
    public ThemeSettings dark_settings { get; construct set; }

    public EmojiChatTheme (
        string name,
        ThemeSettings light_settings,
        ThemeSettings dark_settings
    ) {
        Object (
            name: name,
            light_settings: light_settings,
            dark_settings: dark_settings,
            tdlib_type: "emojiChatTheme",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
