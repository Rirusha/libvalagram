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
 * Installs/uninstalls or activates/archives a sticker set
 */
public class TDLib.ChangeStickerSet : TDObject {

    /**
     * Identifier of the sticker set
     */
    public int64 set_id { get; construct set; }

    /**
     * The new value of is_installed
     */
    public bool is_installed { get; construct set; }

    /**
     * The new value of is_archived. A sticker set can't be installed and
     * archived simultaneously
     */
    public bool is_archived { get; construct set; }

    public ChangeStickerSet (
        int64 set_id,
        bool is_installed,
        bool is_archived
    ) {
        Object (
            set_id: set_id,
            is_installed: is_installed,
            is_archived: is_archived,
            tdlib_type: "changeStickerSet",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
