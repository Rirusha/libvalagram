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
 * Sets a sticker set title
 */
public class TDLib.SetStickerSetTitle : TDObject {

    /**
     * Sticker set name. The sticker set must be owned by the current user
     */
    public string name { get; construct set; }

    /**
     * New sticker set title
     */
    public string title { get; construct set; }

    public SetStickerSetTitle (
        string name,
        string title
    ) {
        Object (
            name: name,
            title: title,
            tdlib_type: "setStickerSetTitle",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
