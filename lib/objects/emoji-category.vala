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
 * Describes an emoji category
 */
public class TDLib.EmojiCategory : Error {

    /**
     * Name of the category
     */
    public string name { get; construct set; }

    /**
     * Custom emoji sticker, which represents icon of the category
     */
    public Sticker icon { get; construct set; }

    /**
     * Source of stickers for the emoji category
     */
    public EmojiCategorySource source { get; construct set; }

    /**
     * True, if the category must be shown first when choosing a sticker for
     * the start page
     */
    public bool is_greeting { get; construct set; }

    public EmojiCategory (
        string name,
        Sticker icon,
        EmojiCategorySource source,
        bool is_greeting
    ) {
        Object (
            name: name,
            icon: icon,
            source: source,
            is_greeting: is_greeting,
            tdlib_type: "emojiCategory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
