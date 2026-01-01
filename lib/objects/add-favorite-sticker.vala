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
 * Adds a new sticker to the list of favorite stickers. The new sticker
 * is added to the top of the list. If the sticker was already in the
 * list, it is removed from the list first.
 * Only stickers belonging to a sticker set or in WEBP or WEBM format can
 * be added to this list. Emoji stickers can't be added to favorite
 * stickers
 */
public class TDLib.AddFavoriteSticker : TDObject {

    /**
     * Sticker file to add
     */
    public InputFile sticker { get; construct set; }

    public AddFavoriteSticker (
        InputFile sticker
    ) {
        Object (
            sticker: sticker,
            tdlib_type: "addFavoriteSticker",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
