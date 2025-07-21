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
 * Changes a profile photo of a business account; for bots only
 */
public class TDLib.SetBusinessAccountProfilePhoto : TDObject {

    /**
     * Unique identifier of business connection
     */
    public string business_connection_id { get; construct set; }

    /**
     * Profile photo to set; pass null to remove the photo
     */
    public InputChatPhoto photo { get; construct set; }

    /**
     * Pass true to set the public photo, which will be visible even if the
     * main photo is hidden by privacy settings
     */
    public bool is_public { get; construct set; }

    public SetBusinessAccountProfilePhoto (
        string business_connection_id,
        InputChatPhoto photo,
        bool is_public
    ) {
        Object (
            business_connection_id: business_connection_id,
            photo: photo,
            is_public: is_public,
            tdlib_type: "setBusinessAccountProfilePhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
