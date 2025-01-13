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
 * Removes a sticker from the list of recently used stickers
 */
internal class TDLib.RemoveRecentSticker : TDObject {

    /**
     * Pass true to remove the sticker from the list of stickers recently
     * attached to photo or video files; pass false to remove the sticker
     * from the list of recently sent stickers
     */
    public bool is_attached { get; construct set; }

    /**
     * Sticker file to delete
     */
    public InputFile sticker { get; construct set; }

    public RemoveRecentSticker (
        bool is_attached,
        InputFile sticker
    ) {
        Object (
            is_attached: is_attached,
            sticker: sticker,
            tdlib_type: "removeRecentSticker",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
