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
 * Represents an emoji with its keyword
 */
public class TDLib.EmojiKeyword : Error {

    /**
     * The emoji
     */
    public string emoji { get; construct set; }

    /**
     * The keyword
     */
    public string keyword { get; construct set; }

    public EmojiKeyword (
        string emoji,
        string keyword
    ) {
        Object (
            emoji: emoji,
            keyword: keyword,
            tdlib_type: "emojiKeyword",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
