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
 * Changes the mask position of a mask sticker. The sticker must belong
 * to a mask sticker set that is owned by the current user
 */
public class TDLib.SetStickerMaskPosition : TDObject {

    /**
     * Sticker
     */
    public InputFile sticker { get; construct set; }

    /**
     * Position where the mask is placed; pass null to remove mask position
     */
    public MaskPosition mask_position { get; construct set; }

    public SetStickerMaskPosition (
        InputFile sticker,
        MaskPosition mask_position
    ) {
        Object (
            sticker: sticker,
            mask_position: mask_position,
            tdlib_type: "setStickerMaskPosition",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
