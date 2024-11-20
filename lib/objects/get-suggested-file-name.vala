/*
 * Copyright (C) 2024 Vladimir Vaskov
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
 * Returns suggested name for saving a file in a given directory
 */
internal class TDLib.GetSuggestedFileName : TDObject {

    /**
     * Identifier of the file
     */
    public int32 file_id { get; construct set; }

    /**
     * Directory in which the file is expected to be saved
     */
    public string directory { get; construct set; }

    public GetSuggestedFileName (
        int32 file_id,
        string directory
    ) {
        Object (
            file_id: file_id,
            directory: directory,
            tdlib_type: "getSuggestedFileName",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
