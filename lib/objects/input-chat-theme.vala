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
 * Describes a chat theme to set
 */
public abstract class TDLib.InputChatTheme : Error {}

/**
 * A theme based on an emoji
 */
public class TDLib.InputChatThemeEmoji : InputChatTheme {

    /**
     * Name of the theme
     */
    public string name { get; construct set; }

    public InputChatThemeEmoji (
        string name
    ) {
        Object (
            name: name,
            tdlib_type: "inputChatThemeEmoji",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A theme based on an upgraded gift
 */
public class TDLib.InputChatThemeGift : InputChatTheme {

    /**
     * Name of the upgraded gift. A gift can be used only in one chat in a
     * time.
     * When the same gift is used in another chat, theme in the previous chat
     * is reset to default
     */
    public string name { get; construct set; }

    public InputChatThemeGift (
        string name
    ) {
        Object (
            name: name,
            tdlib_type: "inputChatThemeGift",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
