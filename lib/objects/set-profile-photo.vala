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
 * Changes a profile photo for the current user
 */
public class TDLib.SetProfilePhoto : TDObject {

    /**
     * Profile photo to set
     */
    public InputChatPhoto photo { get; construct set; }

    /**
     * Pass true to set the public photo, which will be visible even if the
     * main photo is hidden by privacy settings
     */
    public bool is_public { get; construct set; }

    public SetProfilePhoto (
        InputChatPhoto photo,
        bool is_public
    ) {
        Object (
            photo: photo,
            is_public: is_public,
            tdlib_type: "setProfilePhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
