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
 * Checks whether a file is in the profile audio files of the current
 * user. Returns a 404 error if it isn't
 */
public class TDLib.IsProfileAudio : TDObject {

    /**
     * Identifier of the audio file to check
     */
    public int32 file_id { get; construct set; }

    public IsProfileAudio (
        int32 file_id
    ) {
        Object (
            file_id: file_id,
            tdlib_type: "isProfileAudio",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
