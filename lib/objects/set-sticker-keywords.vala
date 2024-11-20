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
 * Changes the list of keywords of a sticker. The sticker must belong to
 * a regular or custom emoji sticker set that is owned by the current
 * user
 */
internal class TDLib.SetStickerKeywords : TDObject {

    /**
     * Sticker
     */
    public InputFile sticker { get; construct set; }

    /**
     * List of up to 20 keywords with total length up to 64 characters, which
     * can be used to find the sticker
     */
    public Gee.ArrayList<string?> keywords { get; construct set; default = new Gee.ArrayList<string?> (); }

    public SetStickerKeywords (
        InputFile sticker,
        Gee.ArrayList<string?> keywords
    ) {
        Object (
            sticker: sticker,
            keywords: keywords,
            tdlib_type: "setStickerKeywords",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
