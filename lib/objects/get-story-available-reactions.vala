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
 * Returns reactions, which can be chosen for a story
 */
internal class TDLib.GetStoryAvailableReactions : TDObject {

    /**
     * Number of reaction per row, 5-25
     */
    public int32 row_size { get; construct set; }

    public GetStoryAvailableReactions (
        int32 row_size
    ) {
        Object (
            row_size: row_size,
            tdlib_type: "getStoryAvailableReactions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
