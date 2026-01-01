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
 * Changes position of an audio file in the profile audio files of the
 * current user
 */
public class TDLib.SetProfileAudioPosition : TDObject {

    /**
     * Identifier of the file from profile audio files, which position will
     * be changed
     */
    public int32 file_id { get; construct set; }

    /**
     * Identifier of the file from profile audio files after which the file
     * will be positioned; pass 0 to move the file to the beginning of the
     * list
     */
    public int32 after_file_id { get; construct set; }

    public SetProfileAudioPosition (
        int32 file_id,
        int32 after_file_id
    ) {
        Object (
            file_id: file_id,
            after_file_id: after_file_id,
            tdlib_type: "setProfileAudioPosition",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
