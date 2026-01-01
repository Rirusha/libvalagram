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
 * Changes the sticker set of a supergroup; requires can_change_info
 * administrator right
 */
public class TDLib.SetSupergroupStickerSet : TDObject {

    /**
     * Identifier of the supergroup
     */
    public int64 supergroup_id { get; construct set; }

    /**
     * New value of the supergroup sticker set identifier. Use 0 to remove
     * the supergroup sticker set
     */
    public int64 sticker_set_id { get; construct set; }

    public SetSupergroupStickerSet (
        int64 supergroup_id,
        int64 sticker_set_id
    ) {
        Object (
            supergroup_id: supergroup_id,
            sticker_set_id: sticker_set_id,
            tdlib_type: "setSupergroupStickerSet",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
