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
 * Describes source of stickers for an emoji category
 */
public abstract class TDLib.EmojiCategorySource : Error {}

/**
 * The category contains a list of similar emoji to search for in
 * getStickers and searchStickers for stickers,
 * or getInlineQueryResults with the bot
 * getOption("animation_search_bot_username") for animations
 */
public class TDLib.EmojiCategorySourceSearch : EmojiCategorySource {

    /**
     * List of emojis to search for
     */
    public Gee.ArrayList<string?> emojis { get; construct set; default = new Gee.ArrayList<string?> (); }

    public EmojiCategorySourceSearch (
        Gee.ArrayList<string?> emojis
    ) {
        Object (
            emojis: emojis,
            tdlib_type: "emojiCategorySourceSearch",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The category contains premium stickers that must be found by
 * getPremiumStickers
 */
public class TDLib.EmojiCategorySourcePremium : EmojiCategorySource {

    public EmojiCategorySourcePremium () {
        Object (
            tdlib_type: "emojiCategorySourcePremium",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
