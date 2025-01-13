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
 * Adds a new sticker to a set
 */
internal class TDLib.AddStickerToSet : TDObject {

    /**
     * Sticker set owner; ignored for regular users
     */
    public int64 user_id { get; construct set; }

    /**
     * Sticker set name. The sticker set must be owned by the current user,
     * and contain less than 200 stickers for custom emoji sticker sets and
     * less than 120 otherwise
     */
    public string name { get; construct set; }

    /**
     * Sticker to add to the set
     */
    public InputSticker sticker { get; construct set; }

    public AddStickerToSet (
        int64 user_id,
        string name,
        InputSticker sticker
    ) {
        Object (
            user_id: user_id,
            name: name,
            sticker: sticker,
            tdlib_type: "addStickerToSet",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
