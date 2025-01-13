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
 * Returns a list of recently used stickers
 */
public class TDLib.GetRecentStickers : TDObject {

    /**
     * Pass true to return stickers and masks that were recently attached to
     * photos or video files; pass false to return recently sent stickers
     */
    public bool is_attached { get; construct set; }

    public GetRecentStickers (
        bool is_attached
    ) {
        Object (
            is_attached: is_attached,
            tdlib_type: "getRecentStickers",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
