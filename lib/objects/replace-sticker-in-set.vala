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
 * Replaces existing sticker in a set. The function is equivalent to
 * {@link Client.remove_sticker_from_set} then
 * {@link Client.add_sticker_to_set} then
 * {@link Client.set_sticker_position_in_set}
 */
public class TDLib.ReplaceStickerInSet : TDObject {

    /**
     * Sticker set owner; ignored for regular users
     */
    public int64 user_id { get; construct set; }

    /**
     * Sticker set name. The sticker set must be owned by the current user
     */
    public string name { get; construct set; }

    /**
     * Sticker to remove from the set
     */
    public InputFile old_sticker { get; construct set; }

    /**
     * Sticker to add to the set
     */
    public InputSticker new_sticker { get; construct set; }

    public ReplaceStickerInSet (
        int64 user_id,
        string name,
        InputFile old_sticker,
        InputSticker new_sticker
    ) {
        Object (
            user_id: user_id,
            name: name,
            old_sticker: old_sticker,
            new_sticker: new_sticker,
            tdlib_type: "replaceStickerInSet",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
