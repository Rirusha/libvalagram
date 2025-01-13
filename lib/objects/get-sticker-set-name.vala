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
 * Returns name of a sticker set by its identifier
 */
internal class TDLib.GetStickerSetName : TDObject {

    /**
     * Identifier of the sticker set
     */
    public int64 set_id { get; construct set; }

    public GetStickerSetName (
        int64 set_id
    ) {
        Object (
            set_id: set_id,
            tdlib_type: "getStickerSetName",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
