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
 * Contains a list of chat or user profile photos
 */
public class TDLib.ChatPhotos : Error {

    /**
     * Total number of photos
     */
    public int32 total_count { get; construct set; }

    /**
     * List of photos
     */
    public Gee.ArrayList<ChatPhoto?> photos { get; construct set; default = new Gee.ArrayList<ChatPhoto?> (); }

    public ChatPhotos (
        int32 total_count,
        Gee.ArrayList<ChatPhoto?> photos
    ) {
        Object (
            total_count: total_count,
            photos: photos,
            tdlib_type: "chatPhotos",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
