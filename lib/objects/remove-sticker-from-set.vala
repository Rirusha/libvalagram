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
 * Removes a sticker from the set to which it belongs. The sticker set
 * must be owned by the current user
 */
internal class TDLib.RemoveStickerFromSet : TDObject {

    /**
     * Sticker to remove from the set
     */
    public InputFile sticker { get; construct set; }

    public RemoveStickerFromSet (
        InputFile sticker
    ) {
        Object (
            sticker: sticker,
            tdlib_type: "removeStickerFromSet",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
